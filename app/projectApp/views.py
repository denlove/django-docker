from django.http import HttpResponse


def index(request):
    return HttpResponse("Howdy? Tech stack: Django + nginx + PostgresQL + Gunicorn + Docker + python")
