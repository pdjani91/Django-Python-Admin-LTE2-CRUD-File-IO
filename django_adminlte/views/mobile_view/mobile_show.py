from django.shortcuts import render,redirect
from django_adminlte.models import Mobile

def mobile_show(request):

	items = Mobile.objects.all()
	contaxt = {
		'items':items,
		'header': 'Mobile Inventory'
	}
	return render(request,'inventory/mobile_show.html',contaxt)

