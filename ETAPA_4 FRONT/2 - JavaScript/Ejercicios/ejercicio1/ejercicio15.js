/* Escribe un programa JavaScript para calcular el área y el perímetro de un objeto Círculo
con la propiedad radio. Nota: Cree dos métodos para calcular el área y el perímetro. El
radio del círculo lo proporcionará el usuario. */

var radio = prompt("Ingrese el radio de una circunferencia");

var circulo = {
  area: function area(radio) {
    return Math.PI * radio ** 2;
  },
  perimetro: function perimetro(radio) {
    return 2 * Math.PI * radio;
  },
};

alert(
  "Area: " + circulo.area(radio) + "\nPerimetro: " + circulo.perimetro(radio)
);
