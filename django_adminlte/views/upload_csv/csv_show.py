from django.shortcuts import render,redirect
from django_adminlte.forms import File_ioForm
from django_adminlte.models import File_io
from django.core.files.storage import FileSystemStorage

def csv_show(request):
	file_io = File_io.objects.all()
	return render(request,'csv_show.html',{
		'file_io':file_io
		})
