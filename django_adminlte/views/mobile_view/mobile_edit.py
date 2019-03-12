from django.shortcuts import render,redirect,get_object_or_404
from django.contrib.auth.forms import UserCreationForm,AuthenticationForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django_adminlte.forms import MobileForm
from django_adminlte.models import Mobile


def mobile_edit(request, pk):
	item = get_object_or_404(Mobile, pk=pk)

	if request.method == "POST":
		form = MobileForm(request.POST,instance=item)
		if form.is_valid():
			form.save()
			return redirect("/mobile_show") 

	else:
		form = MobileForm(instance=item)
		return render(request,"inventory/mobile_edit.html",{'form':form})