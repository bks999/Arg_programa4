/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Libro;

import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class Libro {
    public String ISBN;
    public String Titulo;
    public String Autor;
    public int paginas;
    
    public Libro(String ISBN, String Titulo, String Autor, int paginas) {
        this.ISBN = ISBN;
        this.Titulo = Titulo;
        this.Autor = Autor;
        this.paginas = paginas;
    }

    public Libro() {
    }
    
    public void cargarLibro() {
        Scanner leer = new Scanner (System.in);
        System.out.println("Ingrese los siguientes datos del libro:");
        System.out.println("Autor:");
        this.Autor = leer.nextLine();
        System.out.println("Titulo");
        this.Titulo = leer.nextLine();
        System.out.println("Paginas:");
        this.paginas = leer.nextInt();
        System.out.println("ISBN:");
        this.ISBN = leer.next();
        
        
    }

    @Override
    public String toString() {
        return "Libro{" + "ISBN=" + ISBN + ", Titulo=" + Titulo + ", Autor=" + Autor + ", paginas=" + paginas + '}';
    }
}
