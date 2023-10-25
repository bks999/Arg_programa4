// Conocido el número en matemática PI π, pedir al usuario que ingrese el valor del radio
// de una circunferencia y calcular y mostrar por pantalla el área y perímetro. Recuerde que
// para calcular el área y el perímetro se utilizan las siguientes fórmulas:
// area = PI * radio2
// perimetro = 2 * PI * radio

var radio = prompt("Ingrese el valor del radio de una circunferencia");

function area(radio) {
  return Math.PI * radio ** 2;
}

function perimetro(radio) {
  return 2 * Math.PI * radio;
}

alert("El area es " + area); //sin parentesis se muestra toda la funcion
alert("El perimetro es " + perimetro()); //con parentesis se muestra el return
