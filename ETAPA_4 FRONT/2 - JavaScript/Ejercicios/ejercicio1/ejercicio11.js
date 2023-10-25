/* Escribir una función que reciba un String y devuelva la palabra más larga.
String Ejemplo: “Guia de JavaScript”
Resultado esperado : “JavaScript” */

var func = () => {
  var frase = prompt("Ingrese una frase");
  var arr = frase.split(" ");
  var a = Number(0);
  var palabraLarga = "";

  for (let i = 0; i < arr.length; i++) {
    if (arr[i].length > a) {
      a = arr[i].length;
      palabraLarga = arr[i];
    }
  }
  //   alert(arr.length);
  alert(palabraLarga);
};

func();
