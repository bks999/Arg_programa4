// Construir un programa que simule un menú de opciones para realizar las cuatro
// operaciones aritméticas básicas (suma, resta, multiplicación y división) con dos valores
// numéricos enteros. El usuario, además, debe especificar la operación con el primer
// carácter de la operación que desea realizar: ‘S' o ‘s’ para la suma, ‘R’ o ‘r’ para la resta, ‘M’
// o ‘m’ para la multiplicación y ‘D’ o ‘d’ para la división.

function suma(a, b) {
  return a + b;
}
function resta(a, b) {
  return a - b;
}
function multiplicacion(a, b) {
  return a * b;
}
function division(a, b) {
  return a / b;
}

function menu() {
  var a = Number(prompt("Ingrese el valor de a"));
  var b = Number(prompt("Ingrese el valor de b"));
  var operacion = prompt(
    "Menu\n * SUMA(S)\n * RESTA(R)\n * MULTIPLICACION(M)\n * DIVISION(D)\n INDIQUE LA OPERACION A REALIZAR ESCRIBIENDO LA INICIAL DE LA OPERACION"
  );

  switch (operacion.toLowerCase()) {
    case "s":
      alert("La suma de " + a + " y " + b + ": " + suma(a, b));
      break;
    case "r":
      alert("La resta de " + a + " y " + b + ": " + resta(a, b));
      break;
    case "m":
      alert(
        "La multiplicacion de " + a + " y " + b + ": " + multiplicacion(a, b)
      );
      break;
    case "d":
      alert("La division de " + a + " y " + b + ": " + division(a, b));
      break;
    default:
      alert("Error");
  }
}

menu();
