from django.shortcuts import render,redirect
from django.contrib.auth.forms import UserCreationForm,AuthenticationForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django_adminlte.forms import EmployeeForm,LaptopForm
from django_adminlte.models import Laptop

def laptop_delete(request,pk):
	Laptop.objects.filter(id=pk).delete()
	items = Laptop.objects.all()
	context = {
		'items':items
	}
	return render(request,'inventory/laptop_show.html',context)