// Realizar un programa que pida una frase y el programa deberá mostrar la frase con un
// espacio entre cada letra. La frase se mostrara así: H o l a. Nota: recordar el
// funcionamiento de la función Substring().

var frase = prompt("Ingrese una frase.");
var fraseNueva = "";
var espacio = " ";
for (let b = 0; b < frase.length; b++) {
  fraseNueva += frase.charAt(b) + espacio;
}
alert(fraseNueva.trim());

// otra forma seria
// fraseNueva += frase.substring(b,b+1) + espacio;
