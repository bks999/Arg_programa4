/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package libro;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class LIBRO {
    public String ISBN,Titulo,Autor;
    int numeroPaginas;
    
    public LIBRO() {
        
    }
    public LIBRO (String ISBN, String Titulo, String Autor,int numeroPaginas) {
        this.ISBN = ISBN;
        this.Titulo = Titulo;
        this.Autor = Autor;
        this.numeroPaginas = numeroPaginas;
}
    public void Cargar() {
         Scanner leer = new Scanner(System.in);
         System.out.println("Ingrese ISBN");
         ISBN = leer.nextLine();
         System.out.println("Ingrese Titulo");
         Titulo = leer.nextLine();
         System.out.println("Ingrese Autor");
         Autor = leer.nextLine();
         System.out.println("Ingrese Numero de paginas");
         numeroPaginas = leer.nextInt();
         
         System.out.println("----------------------");
         System.out.println("ISBN: " + ISBN + ", Titulo: " + Titulo+ ", Autor: "+ Autor+ ", N° de paginas: "+ numeroPaginas);
         
    }
}