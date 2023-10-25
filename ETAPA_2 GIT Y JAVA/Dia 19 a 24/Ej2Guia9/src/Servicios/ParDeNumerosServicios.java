/*
Realizar una clase llamada ParDeNumeros que tenga como atributos dos números reales con los cuales se 
realizarán diferentes operaciones matemáticas. La clase debe tener un constructor vacío, getters y
setters.  En el constructor vacío se usará el Math.random para generar los dos números. 
Crear una clase ParDeNumerosService, en el paquete Servicios, que deberá además implementar
los siguientes métodos
:
Método mostrarValores que muestra cuáles son los dos números guardados.

Método devolverMayor para retornar cuál de los dos atributos tiene el mayor valor

Método calcularPotencia para calcular la potencia del mayor valor de la clase elevado al menor número. 
Previamente se deben redondear ambos valores.

Método calculaRaiz, para calcular la raíz cuadrada del menor de los dos valores. Antes de calcular la 
raíz cuadrada se debe obtener el valor absoluto del número.
 */
package Servicios;

import Entidades.ParDeNumeros;

/**
 *
 * @author Sol
 */
public class ParDeNumerosServicios {
    ParDeNumeros ob = new ParDeNumeros();
    
    public void mostrarValores() {
        System.out.println("El num1 es: " + ob.getNum1());
        System.out.println("El num2 es: " + ob.getNum2());
    }
        public double devolverMayor() {
            double num1 = ob.getNum1();
            double num2 = ob.getNum2();
            double mayor = Math.max(num1,num2);
            return mayor;
        }    
        
        public double calcularPotencia() {
            double may = Math.round(Math.max(ob.getNum1(),ob.getNum2()));
            double men = Math.round(Math.min(ob.getNum1(),ob.getNum2()));
            double resultado = Math.pow(may, men);
            return resultado;
        }
        
        public double calculaRaiz() {
            double men = Math.max(ob.getNum1(),ob.getNum2());
            double resultado = Math.sqrt(Math.abs(men));
            return resultado;
        }
}
