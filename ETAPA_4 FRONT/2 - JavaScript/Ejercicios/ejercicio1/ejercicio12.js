/* Escribir una función flecha de JavaScript que reciba un argumento y retorne el tipo de
dato. */

var func = (a) => {
  return typeof a;
};

alert(func(parseInt(prompt("ingrese algo"))));
alert(func(prompt("ingrese algo")));

var b = true;

alert(func(b));
