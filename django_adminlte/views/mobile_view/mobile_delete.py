from django.shortcuts import render,redirect
from django.contrib.auth.forms import UserCreationForm,AuthenticationForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django_adminlte.forms import EmployeeForm,MobileForm
from django_adminlte.models import Mobile

def mobile_delete(request,pk):
	Mobile.objects.filter(id=pk).delete()
	items = Mobile.objects.all()
	context = {
		'items':items
	}
	return render(request,'inventory/mobile_show.html',context)