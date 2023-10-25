// Escriba un programa en el cual se ingrese un valor límite positivo, y a continuación
// solicite números al usuario hasta que la suma de los números introducidos supere el
// límite inicial.
do {
  var limite = Number(prompt("Ingrese un valor como limite positivo"));
  if (limite < 0) {
    alert("No es un numero positivo, vuelva a intentarlo.");
  }
} while (limite < 0);

var suma = 0;
suma = Number(suma);
while (suma < limite) {
  var numero1 = Number(prompt("Ingrese un numero"));
  suma += numero1;
  alert(suma);
}
