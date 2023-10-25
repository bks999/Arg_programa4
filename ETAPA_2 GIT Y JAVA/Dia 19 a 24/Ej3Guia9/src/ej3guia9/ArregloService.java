/*
Crear en el Main dos arreglos. El arreglo A de 50 números reales y el arreglo B de 20 números reales. 

Crear la clase ArregloService, en el paquete servicio, con los siguientes métodos:

Método inicializarA recibe un arreglo por parámetro y lo inicializa con números aleatorios.

Método mostrar recibe un arreglo por parámetro y lo muestra por pantalla.

Método ordenar recibe un arreglo por parámetro y lo ordena de mayor a menor.

Método inicializarB copia los primeros 10 números del arreglo A en el arreglo B. Luego llenar las últimas 
10 posiciones del arreglo B con 0.5.

En el Main nuevamente: inicializar A, mostrar A, ordenar A, inicializar B, mostrar A y B.

 */
package ej3guia9;

import java.util.Arrays;

/**
 *
 * @author Sol
 */
public class ArregloService {

    public void inicializar(double arreglo[]) {
        System.out.println("Inicializando arreglo...");
        int n=arreglo.length;
        for (int i = 0; i < n; i++) {
            arreglo[i] = Math.floor(Math.random() * 10);
        }
    }

    public String mostrar(double arreglo[]) {
        return Arrays.toString(arreglo);
    }

    public void ordenar(double arreglo[]) {
        System.out.println("Arreglo de menor a mayor (para comparar");
        Arrays.sort(arreglo);
        System.out.println(mostrar(arreglo));
        int n = arreglo.length;
        for (int i = 0; i < n / 2; i++) {
            double aux = arreglo[i];
            arreglo[i] = arreglo[n - i - 1];
            arreglo[n - i - 1] = aux;
        }
    }
}
