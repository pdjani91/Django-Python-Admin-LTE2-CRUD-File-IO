from django.shortcuts import render,redirect
from django.contrib.auth.forms import UserCreationForm,AuthenticationForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django_adminlte.forms import EmployeeForm,LaptopForm
from django_adminlte.models import Employee

def laptop(request):
	if request.method == "POST":
		form = LaptopForm (request.POST)
		if form.is_valid():
			try:
				form.save()
				return redirect("/laptop_show")
			except:
				pass

	else:
		form = LaptopForm()

	return render(request,'inventory/laptop_index.html',{'form':form})