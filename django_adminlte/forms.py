from django import forms
from django_adminlte.models import Employee,Laptop,Desktop,Mobile,File_io

class EmployeeForm(forms.ModelForm):
	class Meta:
		model = Employee
		fields = "__all__"

class LaptopForm(forms.ModelForm):
	class Meta:
		model = Laptop
		fields = "__all__"

class DesktopForm(forms.ModelForm):
	class Meta:
		model = Desktop
		fields = "__all__"

class MobileForm(forms.ModelForm):
	class Meta:
		model = Mobile
		fields = "__all__"

class File_ioForm(forms.ModelForm):
	class Meta:
		model = File_io
		fields = "__all__"