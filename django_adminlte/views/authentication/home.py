from django.shortcuts import render,redirect
from django.contrib.auth.forms import UserCreationForm,AuthenticationForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django_adminlte.forms import EmployeeForm
from django_adminlte.models import Employee,Laptop,Desktop,Mobile,File_io


@login_required
def home(request):
    user_count = User.objects.count()
    employee_count = Employee.objects.count()
    laptop_count = Laptop.objects.count()
    desktop_count = Desktop.objects.count()
    mobile_count = Mobile.objects.count()
    file_io_count = File_io.objects.count()

    context = {
    'user_count' : user_count,
    'employee_count' : employee_count,
    'laptop_count':laptop_count,
    'desktop_count':desktop_count,
    'mobile_count':mobile_count,
    'file_io_count':file_io_count,
    }
    return render(request,'index.html',context)