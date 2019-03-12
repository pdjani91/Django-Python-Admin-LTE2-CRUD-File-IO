from django.shortcuts import render,redirect
from django_adminlte.models import Laptop
from django.contrib.auth.decorators import login_required

@login_required
def laptop_show(request):

	items = Laptop.objects.all()
	contaxt = {
		'items':items,
		'header': 'Laptop Inventory',
	}
	return render(request,'inventory/laptop_show.html',contaxt)