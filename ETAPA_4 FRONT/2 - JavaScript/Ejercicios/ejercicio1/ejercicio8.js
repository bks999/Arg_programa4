// Escribir un programa que lea números enteros hasta teclear 0 (cero). Al finalizar el
// programa se debe mostrar el máximo número ingresado, el mínimo, y el promedio de
// todos ellos.
var numMax = Number(0);
var numMin = Number(0);
var contPromedio = Number(0);
var suma1 = Number(0);
do {
  var num1 = Number(prompt("Ingrese numeros. Para terminar teclear 0"));
  if (num1 != 0) {
    suma1 += num1;
    contPromedio++;
    if (num1 > numMax) {
      numMax = num1;
    }
    if (numMin === 0 || num1 < numMin) {
      numMin = num1;
    }
  }
} while (num1 != 0);

alert(
  "Maximo: " +
    numMax +
    "\n Minimo: " +
    numMin +
    "\n Promedio: " +
    suma1 / contPromedio
);
