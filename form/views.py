from form.form import StuForm
import datetime
from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse



def index(request):
    stu = StuForm()
    return render(request, "/html/index.html", {'form': stu})
