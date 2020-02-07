from form.form import EmpForm
import datetime
from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse



def index(request):
    stu = EmpForm()
    stu = EmpForm()
    return render(request, "index.html", {'form': stu})
