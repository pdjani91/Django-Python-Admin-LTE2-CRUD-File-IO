from django.conf.urls import url
from django.contrib import admin
from django.urls import path,include
from django_adminlte import views
from django.conf import settings
from django.conf.urls.static import static
from django_adminlte.views.authentication import home,login,signup
from django_adminlte.views.employee_view import emp,show,edit,update,delete
from django_adminlte.views.laptop_view import laptop,laptop_show,laptop_edit,laptop_update
from django_adminlte.views.desktop_view import desktop,desktop_show,desktop_edit,desktop_delete
from django_adminlte.views.mobile_view import mobile,mobile_show
from django_adminlte.views.upload_csv import upload_csv,load_csv


urlpatterns = [
	path('admin/', admin.site.urls),

	path('',views.authentication.login,name='login'),
	path('home/',views.authentication.home,name='home'),
	path('signup/',views.authentication.signup,name='signup'),

	path('employee/',views.employee_view.emp,name='emp'),
	path('show/',views.employee_view.show,name='show'),
	path('edit/<int:id>',views.employee_view.edit),
    path('update/<int:id>',views.employee_view.update),
    path('delete/<int:id>',views.employee_view.delete),

    path('laptop/',views.laptop_view.laptop,name='laptop'),
    path('laptop_show/',views.laptop_view.laptop_show,name='laptop_show'),
    path('laptop_edit/<int:pk>',views.laptop_view.laptop_edit,name='laptop_edit'),
    path('laptop_delete/<int:pk>',views.laptop_view.laptop_delete,name='laptop_delete'),


    path('desktop/',views.desktop_view.desktop,name='desktop'),
    path('desktop_show/',views.desktop_view.desktop_show,name='desktop_show'),
    path('desktop_edit/<int:pk>',views.desktop_view.desktop_edit,name='desktop_edit'),
    path('desktop_delete/<int:pk>',views.desktop_view.desktop_delete,name='desktop_delete'),

    path('mobile/',views.mobile_view.mobile,name='mobile'),
    path('mobile_show/',views.mobile_view.mobile_show,name='mobile_show'),
    path('mobile_edit/<int:pk>',views.mobile_view.mobile_edit,name='mobile_edit'),
    path('mobile_delete/<int:pk>',views.mobile_view.mobile_delete,name='mobile_delete'),

    path('upload_csv/',views.upload_csv.upload_csv,name='upload_csv'),
    path('load_csv/',views.upload_csv.load_csv,name='load_csv'),
    path('csv_list/',views.upload_csv.csv_list,name='csv_list'),
    path('csv_show/',views.upload_csv.csv_show,name='csv_show'),
    path('delete_csv/<int:pk>',views.upload_csv.delete_csv,name='delete_csv'),

	path('accounts/',include('django.contrib.auth.urls')),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,document_root = settings.MEDIA_ROOT)