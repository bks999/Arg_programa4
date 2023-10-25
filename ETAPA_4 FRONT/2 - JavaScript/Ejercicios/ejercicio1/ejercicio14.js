/* Crear un objeto libro que contenga las siguientes propiedades: ISBN, Título, Autor,
Número de páginas. Crear un método para cargar un libro pidiendo los datos al usuario
y luego informar mediante otro método el número de ISBN, el título, el autor del libro y el
numero de páginas. */

function Libro(isbn, titulo, autor, paginas) {
  //funcion constructora del objeto Libro
  //funcion constructora de objeto libro
  this.isbn = isbn;
  this.titulo = titulo;
  this.autor = autor;
  this.paginas = paginas;
}

function crearLibro() {
  //funcion para crear y retornar nuevo libro segun respuestas del usuario
  let libro = new Libro();
  libro.isbn = prompt("Ingrese ISBN");
  libro.titulo = prompt("Ingrese titulo");
  libro.autor = prompt("Ingrese autor");
  libro.paginas = prompt("Ingrese el numero de paginas");
  return libro;
}

var mostrarLibro = () => {
  //funcion para crear libro, guardar el libro retornado en una variable y mostrar las propiedades en pantalla
  let libro = crearLibro();
  alert(
    "ISBN: " +
      libro.isbn +
      "\nTitulo: " +
      libro.titulo +
      "\nAutor: " +
      libro.autor +
      "\nPaginas: " +
      libro.paginas
  );
};

mostrarLibro(); //llamado a la funcion para mostrar el libro.
