/* Crear un objeto persona, con las propiedades nombre, edad, sexo ('H' hombre, 'M' mujer,
'O' otro), peso y altura. A continuación, muestre las propiedades del objeto JavaScript. */

var persona = new Object();
persona.nombre = prompt("Ingrese nombre");
persona.edad = prompt("Ingrese edad");
do {
  var sexo1 = prompt(
    "Ingrese su sexo: \n * hombre (H) \n * mujer(M) \n * otro (O)"
  );
} while (
  sexo1.toLowerCase() !== "h" &&
  sexo1.toLowerCase() !== "m" &&
  sexo1.toLowerCase() !== "o"
);

persona.sexo = sexo1;
persona.peso = prompt("Ingrese su peso");
persona.altura = prompt("Ingrese su altura");

function sexo(sexo1) {
  switch (sexo1.toLowerCase()) {
    case "h":
      return "Hombre";
      break;
    case "m":
      return "Mujer";
      break;
    case "o":
      return "Otro";
      break;
  }
}
alert(
  "Nombre: " +
    persona.nombre +
    "\nEdad: " +
    persona.edad +
    "\nSexo: " +
    sexo(persona.sexo) +
    "\nPeso: " +
    persona.peso +
    "\nAltura: " +
    persona.altura
);
