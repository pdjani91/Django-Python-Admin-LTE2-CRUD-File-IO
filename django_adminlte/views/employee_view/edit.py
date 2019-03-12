from django.shortcuts import render,redirect
from django.contrib.auth.forms import UserCreationForm,AuthenticationForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django_adminlte.forms import EmployeeForm
from django_adminlte.models import Employee

def edit(request,id):
	employee = Employee.objects.get(id=id)
	return render(request,"employee/edit.html",{'employee':employee})