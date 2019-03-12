from django.shortcuts import render,redirect
from django_adminlte.models import Desktop

def desktop_show(request):

	items = Desktop.objects.all()
	contaxt = {
		'items':items,
		'header': 'Desktop Inventory'
	}
	return render(request,'inventory/desktop_show.html',contaxt)
