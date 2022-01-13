from django.shortcuts import render, redirect

from shortener.models import Users

# Create your views here.


def index(request):
    user = Users.objects.filter(username='bobbohee').first()
    # user = Users.objects.get(username='bobbohee') -> 1개만 있어야 함 (0개 또는 2개 이상 리턴되는 경우 Error가 발생해 Validation 체크하는 용도로 많이 사용됨)
    email = user.email if user else 'Anonymous User!'
    if request.user.is_authenticated is False:
        email = 'Anonymous User!'
    return render(request, 'base.html', {'welcome_msg': f'Hello {email}'})

def redirect_index(request):
    return redirect('re_index') # urls에 지정된 name과 같아야 함.