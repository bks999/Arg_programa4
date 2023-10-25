/* Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios
y los muestre por pantalla. */

var arr1 = new Array();
var arr2 = new Array();

for (let i = 0; i < 5; i++) {
  arr1[i] = Math.round(Math.random() * 10);
  arr2[i] = Math.round(Math.random() * 10);
}

alert(arr1);
alert(arr2);
