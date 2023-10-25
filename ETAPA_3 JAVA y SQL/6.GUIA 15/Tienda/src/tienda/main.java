/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package tienda;

import java.util.Scanner;
import tienda.servicios.fabricanteService;
import tienda.servicios.productoService;

/**
 *
 * @author Sol
 */
public class main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        productoService serv = new productoService();
        fabricanteService serF = new fabricanteService();
        Scanner sc = new Scanner(System.in).useDelimiter("\n");
//        serv.listaProducto();
//        serv.imprimirProductos();
//        serv.imprimirNombres();
//        serv.imprimirNombresPrecios();
//        serv.productoPrecio();
//        System.out.println("Ingrese el nombre del producto a buscar");
//        String p = sc.next();
//        serv.buscarProducto(p);
//        serv.prodMasBarato();
 //       serv.crearProducto();
 //       serF.crearFabricante();
    }

}
