/* Realizar un programa que elimine los dos últimos elementos de un array. Mostrar el
resultado */

var arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
var arr1 = new Array();

arr1 = arr.slice(0, arr.length - 2);

alert(arr1);
