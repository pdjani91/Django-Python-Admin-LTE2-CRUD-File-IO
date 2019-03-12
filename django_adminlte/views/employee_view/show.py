from django.shortcuts import render,redirect
from django.contrib.auth.forms import UserCreationForm,AuthenticationForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django_adminlte.forms import EmployeeForm
from django_adminlte.models import Employee

def show(request):
	employees = Employee.objects.all()
	return render(request,"employee/show.html",{'employees': employees})