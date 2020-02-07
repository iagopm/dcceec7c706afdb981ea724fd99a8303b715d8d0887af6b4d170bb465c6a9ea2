from .models import Book, Author, BookInstance, Genre


def index(request):
    # Renderiza la plantilla HTML index.html con los datos en la variable contexto
    return render(
        request,
        'index.html'
        )
