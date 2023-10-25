var numero = prompt("Ingrese un numero para ver si es par o impar");
numero = Number(numero);
if (numero%2===0 && numero!= 0) {
    alert("Es par");
} else if (numero === 0) {
    alert("No es ni par ni impar");
} else {
    alert("Es impar");
};