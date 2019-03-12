from django.shortcuts import render,redirect
from django_adminlte.forms import File_ioForm
from django_adminlte.models import File_io
from django.core.files.storage import FileSystemStorage

def upload_csv(request):
	context = {}
	if request.method == 'POST':
		uploaded_file = request.FILES['document']
		fs = FileSystemStorage()
		name = fs.save(uploaded_file.name,uploaded_file)
		context['url'] = fs.url(name)
	return render(request,'upload_csv.html',context)



def csv_list(request):
	if request.method == 'POST':
		form = File_ioForm(request.POST,request.FILES)
		if form.is_valid():
			form.save()
			return redirect('csv_show')
	else:
		form = File_ioForm()
		return render(request,'csv_list.html',{'form':form })

def delete_csv(request, pk):
	if request.method == "POST":
		file_io = File_io.objects.get(pk=pk)
		file_io.delete()
	return redirect('csv_show')