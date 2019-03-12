from django.shortcuts import render,redirect
from django.contrib.auth.forms import UserCreationForm,AuthenticationForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django_adminlte.forms import EmployeeForm,DesktopForm
from django_adminlte.models import Desktop

def desktop_delete(request,pk):
	Desktop.objects.filter(id=pk).delete()
	items = Desktop.objects.all()
	context = {
		'items':items
	}
	return render(request,'inventory/desktop_show.html',context)