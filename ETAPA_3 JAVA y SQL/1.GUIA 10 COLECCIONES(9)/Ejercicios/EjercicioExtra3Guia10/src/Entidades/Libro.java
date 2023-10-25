/*
La clase Libro debe guardar
el título del libro, autor, número de ejemplares y número de ejemplares prestados.
 */
package Entidades;

import java.util.Objects;

/**
 *
 * @author Sol
 */
public class Libro {
    private String libro;
    private String autor;
    private Integer numEjemplares;
    private Integer numEjemplaresPrestados;

    public Libro() {
    }

    public Libro(String libro, String autor, Integer numEjemplares, Integer numEjemplaresPrestados) {
        this.libro = libro;
        this.autor = autor;
        this.numEjemplares = numEjemplares;
        this.numEjemplaresPrestados = numEjemplaresPrestados;
    }

    public String getLibro() {
        return libro;
    }

    public void setLibro(String libro) {
        this.libro = libro;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public Integer getNumEjemplares() {
        return numEjemplares;
    }

    public void setNumEjemplares(Integer numEjemplares) {
        this.numEjemplares = numEjemplares;
    }

    public Integer getNumEjemplaresPrestados() {
        return numEjemplaresPrestados;
    }

    public void setNumEjemplaresPrestados(Integer numEjemplaresPrestados) {
        this.numEjemplaresPrestados = numEjemplaresPrestados;
    }

    @Override
    public String toString() {
        return "Libro{" + "libro=" + libro + ", autor=" + autor + ", numEjemplares=" + numEjemplares + ", numEjemplaresPrestados=" + numEjemplaresPrestados + '}';
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 67 * hash + Objects.hashCode(this.libro);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Libro other = (Libro) obj;
        if (!Objects.equals(this.libro, other.libro)) {
            return false;
        }
        return true;
    }

    
}
