/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidades;

/**
 *
 * @author Sol
 */
public class Residencia extends AlojamientoExtrahotelero{
    private int habitaciones;
    private boolean descuentoGremios;
    private boolean campoDeportivo;

    public Residencia(int habitaciones, boolean descuentoGremios, boolean campoDeportivo, boolean privado, double cantMetros2, String nombre, String direccion, String localidad, String gerente) {
        super(privado, cantMetros2, nombre, direccion, localidad, gerente);
        this.habitaciones = habitaciones;
        this.descuentoGremios = descuentoGremios;
        this.campoDeportivo = campoDeportivo;
    }

    public Residencia(boolean privado, double cantMetros2, String nombre, String direccion, String localidad, String gerente) {
        super(privado, cantMetros2, nombre, direccion, localidad, gerente);
    }

    public int getHabitaciones() {
        return habitaciones;
    }

    public void setHabitaciones(int habitaciones) {
        this.habitaciones = habitaciones;
    }

    public boolean isDescuentoGremios() {
        return descuentoGremios;
    }

    public void setDescuentoGremios(boolean descuentoGremios) {
        this.descuentoGremios = descuentoGremios;
    }

    public boolean isCampoDeportivo() {
        return campoDeportivo;
    }

    public void setCampoDeportivo(boolean campoDeportivo) {
        this.campoDeportivo = campoDeportivo;
    }

    public boolean isPrivado() {
        return privado;
    }

    public void setPrivado(boolean privado) {
        this.privado = privado;
    }

    public double getCantMetros2() {
        return cantMetros2;
    }

    public void setCantMetros2(double cantMetros2) {
        this.cantMetros2 = cantMetros2;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getLocalidad() {
        return localidad;
    }

    public void setLocalidad(String localidad) {
        this.localidad = localidad;
    }

    public String getGerente() {
        return gerente;
    }

    public void setGerente(String gerente) {
        this.gerente = gerente;
    }

    @Override
    public String toString() {
        return super.toString() + 
                "\n Residencia: " + "descuentoGremios=" + descuentoGremios + '}';
    }

    
}
