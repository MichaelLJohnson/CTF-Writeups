#!/bin/bash/env python3

from selenium import webdriver 

driver = webdriver.Firefox()

listnum = 640

found = False

while found == False:
	driver.get('http://138.247.13.110/todolist/' +str(listnum)+ '/')
	if 'MITRE' in driver.find_element_by_class_name('title').text:
		found = True
	listnum += 1