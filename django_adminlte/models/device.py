from django.db import models

class Device(models.Model):
	device_type = models.CharField(max_length=100,blank=False)
	price = models.IntegerField()

	choices = (
		('AVAILABLE','Item ready to be purchased'),
		('SOLD','Item Sold'),
		('RESTOCKING','Item restocking in few days')
	)
	status =  models.CharField(max_length=10, choices=choices, default="SOLD")
	issues = models.CharField(max_length=100, default="No Issues")

	class Meta:
		abstract = True

	def __str__(self):
		return 'Device_type:{0} Price:{1}'.format(self.device_type,self.price)


#Inheritance Concept

class Laptop(Device):
	pass
	class Meta:
		db_table = "laptop"

class Desktop(Device):
	pass
	class Meta:
		db_table = "Desktop"

class Mobile(Device):
	pass
	class Meta:
		db_table = "Mobile"
