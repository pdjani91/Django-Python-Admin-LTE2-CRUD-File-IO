from django.shortcuts import render,redirect
from django.contrib.auth.forms import UserCreationForm,AuthenticationForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django_adminlte.forms import EmployeeForm,DesktopForm
from django_adminlte.models import Employee

def desktop(request):
	if request.method == "POST":
		form = DesktopForm (request.POST)
		if form.is_valid():
			try:
				form.save()
				return redirect("/desktop_show")
			except:
				pass

	else:
		form = DesktopForm()

	return render(request,'inventory/desktop_index.html',{'form':form})