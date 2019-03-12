from django.shortcuts import render,redirect,get_object_or_404
from django.contrib.auth.forms import UserCreationForm,AuthenticationForm
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django_adminlte.forms import DesktopForm
from django_adminlte.models import Desktop


def desktop_edit(request, pk):
	item = get_object_or_404(Desktop, pk=pk)

	if request.method == "POST":
		form = DesktopForm(request.POST,instance=item)
		if form.is_valid():
			form.save()
			return redirect("/desktop_show") 

	else:
		form = DesktopForm(instance=item)
		return render(request,"inventory/desktop_edit.html",{'form':form})