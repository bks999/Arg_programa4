// Escribir una función flecha que reciba una palabra y la devuelva al revés.
var palabra = prompt("Ingrese una palabra");

var reves = (palabra) => {
  return palabra.split("").reverse().join("");
};

var palabraNueva = reves(palabra);
alert(palabraNueva);
