from django.http.response import JsonResponse
from django.shortcuts import render, redirect
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator

from shortener.models import Users
from shortener.forms import RegisterForm, LoginForm

# Create your views here.


def index(request):
    user = Users.objects.filter(id=request.user.id).first()
    # user = Users.objects.get(username='bobbohee') -> 1개만 있어야 함 (0개 또는 2개 이상 리턴되는 경우 Error가 발생해 Validation 체크하는 용도로 많이 사용됨)
    email = user.email if user else 'Anonymous User!'
    if request.user.is_authenticated is False:
        email = 'Anonymous User!'
    return render(request, 'base.html', {'welcome_msg': f'Hello {email}'})

def redirect_index(request):
    return redirect('re_index') # urls에 지정된 name과 같아야 함.

@csrf_exempt
def get_user(request, user_id):
    if request.method == 'GET':
        abc = request.GET.get('abc')
        xyz = request.GET.get('xyz')
        user = Users.objects.filter(pk=user_id).first()
        return render(request, 'base.html', {'user': user, 'params': [abc, xyz]})
    elif request.method == 'POST':
        username = request.GET.get('username')
        if username:
            user = Users.objects.filter(pk=user_id).update(username=username)
            return JsonResponse(status=201, data=dict(msg='You just reached with Post Method!')) # msg가 한글인 경우 safe=False로 설정

def register(request):
    if request.method == 'POST':
        form = RegisterForm(request.POST)
        msg = '올바르지 않은 데이터 입니다.'
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            raw_password = form.cleaned_data.get('password')
            user = authenticate(username=username, password=raw_password)
            login(request, user)
            msg = '회원가입 완료'
        return render(request, 'register.html', {'form': form, 'msg': msg})
    else:
        form = RegisterForm()
        return render(request, 'register.html', {'form': form})

def login_view(request): # login으로 해버리면 django.contrib.auth.login과 겹침
    is_ok = False
    if request.method == 'POST':
        form = LoginForm(request.POST)
        if form.is_valid():
            email = form.cleaned_data.get('email')   
            raw_password = form.cleaned_data.get('password')
            remember_me = form.cleaned_data.get('remember_me')
            msg = '올바른 유저 ID와 패스워드를 입력하세요.'
            try:
                user = Users.objects.get(email=email)
            except Users.DoesNotExist:
                msg = '올바른 유저 ID와 패스워드를 입력하세요.'
            else:
                if user.check_password(raw_password):
                    msg = None
                    login(request, user)
                    is_ok = True
                    request.session['remember_me'] = remember_me

                    # 브라우저를 닫으면 세션 종료 
                    # 브라우저에 따라서 되는 브라우저가 있고, 안되는 브라우저(크롬)도 있음
                    # if not remember_me:
                        # request.session.set_expiry(0)
        else:
            msg = '올바른 유저 ID와 패스워드를 입력하세요.'
    else:
        msg = None
        form = LoginForm()

    # AuthenticationForm 사용 시, class 적용
    # for visible in form.visible_fields():
    #     visible.field.widget.attrs['placeholder'] = '유저 ID' if visible.name == 'username' else '패스워드'
    #     visible.field.widget.attrs['class'] = 'form-control'
    return render(request, 'login.html', {'form': form, 'msg': msg, 'is_ok': is_ok})

def logout_view(request): # logout으로 해버리면 django.contrib.auth.logout과 겹침
    logout(request)
    return redirect('re_login')

@login_required
def list_view(request):
    page = int(request.GET.get('p', 1))
    users = Users.objects.all().order_by('-id')
    paginator = Paginator(users, 10) # 한 페이지에 10개씩 나타냄
    users = paginator.get_page(page)
    return render(request, 'boards.html', {'users': users})