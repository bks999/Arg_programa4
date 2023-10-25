function clima() {
  const clima = document.getElementById("clima");
  let value = clima.value;
  let respuesta = clima.options[clima.selectedIndex].text;
  const ej1 = document.getElementById("ej1");
  ej1.textContent = `El día de hoy está ${respuesta}.`;
}

function calculosRadio() {
  const radio = parseInt(document.getElementById("radio").value);
  const ej2 = document.getElementById("ej2");
  if (isNaN(radio)) {
    ej2.textContent = `No has ingresado un numero.`;
  } else {
    var area = Math.PI * radio ** 2;
    var perimetro = 2 * Math.PI * radio;
    ej2.textContent = `AREA = ${area} 
    PERÍMETRO = ${perimetro}`;
  }
}

function edadUsuario() {
  const edad = document.getElementById("edad");
  const ej3 = document.getElementById("ej3");
  var edadValue = edad.value;
  if (edadValue >= 18) {
    ej3.textContent = "Eres mayor de edad.";
  } else {
    ej3.textContent = "Eres menor de edad.";
  }
}

function validarLetra() {
  const letra = document.getElementById("letra");
  const ej4 = document.getElementById("ej4");
  var letraValue = letra.value;
  if (letraValue.toLowerCase() === "s" || letraValue.toLowerCase() === "n") {
    ej4.textContent = "CORRECTO";
  } else {
    ej4.textContent = "INCORRECTO";
  }
}

function validarOperacion() {
  const operacion = document.getElementById("operacion");
  const simbolo = document.getElementById("simbolo");
  var opValue = operacion.value;

  if (
    opValue.toLowerCase() === "s" ||
    opValue.toLowerCase() === "r" ||
    opValue.toLowerCase() === "m" ||
    opValue.toLowerCase() === "d"
  ) {
    switch (opValue) {
      case "s":
        simbolo.textContent = "  +  ";
        break;
      case "r":
        simbolo.textContent = "  -  ";
        break;
      case "m":
        simbolo.textContent = "  x  ";
        break;
      case "d":
        simbolo.textContent = "  /  ";
        break;
    }
  }
  return opValue;
}

function doOperacion() {
  const ej5 = document.getElementById("ej5");
  var num1 = Number(document.getElementById("num1").value);
  var num2 = Number(document.getElementById("num2").value);

  if (num1.isNaN || num2.isNaN) {
    ej5.textContent = "No se ha ingresado un numero";
  } else {
    switch (validarOperacion()) {
      case "s":
        ej5.textContent = `${num1} + ${num2} = ${num1 + num2}`;
        break;
      case "r":
        ej5.textContent = `${num1} - ${num2} = ${num1 - num2}`;
        break;
      case "m":
        ej5.textContent = `${num1} * ${num2} = ${num1 * num2}`;
        break;
      case "d":
        ej5.textContent = `${num1} / ${num2} = ${num1 / num2}`;
        break;
    }
  }
}

function validarParImpar() {
  const ej6 = document.getElementById("ej6");
  var num3 = Number(document.getElementById("num3").value);

  if (num3 === 0) {
    ej6.textContent = "No es ni par ni impar";
  } else if (num3 !== Math.trunc(num3)) {
    ej6.textContent = "No es un numero entero";
  } else {
    if (num3 % 2 === 0) {
      ej6.textContent = "Es par";
    } else {
      ej6.textContent = "Es impar";
    }
  }
}

function validarNumLimPositivo() {
  const mensaje = document.getElementById("validarNumLimPositivo");
  var num4 = Number(document.getElementById("numLimPositivo").value);
  if (num4 < 0) {
    mensaje.innerText = "No es un numero positivo";
  } else {
    mensaje.innerText = "";
  }
}

function sumarNumerosEj7() {
  const ej7 = document.getElementById("ej7");
  num4 = Number(document.getElementById("numLimPositivo").value);
  var suma = 0;
  let array1 = new Array();
  let aux = 0;
  while (suma < num4) {
    var numero1 = Number(prompt("Ingrese un numero"));
    array1[aux] = numero1;
    suma += numero1;
    aux++;
  }
  ej7.innerText =
    "Has llegado al limite, los numeros ingresados fueron: " + array1;
}
