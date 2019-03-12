from django.shortcuts import render,redirect
from django.contrib.auth.forms import UserCreationForm,AuthenticationForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django_adminlte.forms import EmployeeForm,MobileForm
from django_adminlte.models import Employee

def mobile(request):
	if request.method == "POST":
		form = MobileForm (request.POST)
		if form.is_valid():
			try:
				form.save()
				return redirect("/mobile_show")
			except:
				pass

	else:
		form = MobileForm()

	return render(request,'inventory/mobile_index.html',{'form':form})