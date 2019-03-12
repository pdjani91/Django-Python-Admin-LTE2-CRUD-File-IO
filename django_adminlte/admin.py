from django.contrib import admin
from.models import Employee,Laptop, Mobile, Desktop,File_io
from import_export.admin import ImportExportModelAdmin



@admin.register(Employee,Laptop, Mobile, Desktop,File_io)
class ViewAdmin(ImportExportModelAdmin):
	pass



