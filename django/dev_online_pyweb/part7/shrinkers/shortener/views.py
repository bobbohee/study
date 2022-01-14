from django.http.response import JsonResponse
from django.shortcuts import render, redirect
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth import login, authenticate

from shortener.models import Users
from shortener.forms import RegisterForm

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