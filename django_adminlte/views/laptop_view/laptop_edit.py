from django.shortcuts import render,redirect,get_object_or_404
from django.contrib.auth.forms import UserCreationForm,AuthenticationForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django_adminlte.forms import LaptopForm
from django_adminlte.models import Laptop


def laptop_edit(request, pk):
	item = get_object_or_404(Laptop, pk=pk)

	if request.method == "POST":
		form = LaptopForm(request.POST,instance=item)
		if form.is_valid():
			form.save()
			return redirect("/laptop_show") 

	else:
		form = LaptopForm(instance=item)
		return render(request,"inventory/laptop_edit.html",{'form':form})