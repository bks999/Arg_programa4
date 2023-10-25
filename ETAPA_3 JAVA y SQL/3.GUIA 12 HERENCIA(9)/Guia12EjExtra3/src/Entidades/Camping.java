/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidades;

/**
 *
 * @author Sol
 */
public class Camping extends AlojamientoExtrahotelero{
    private int carpasMax;
    private int banios;
    private boolean restaurante;

    public Camping(int carpasMax, int banios, boolean restaurante, boolean privado, double cantMetros2, String nombre, String direccion, String localidad, String gerente) {
        super(privado, cantMetros2, nombre, direccion, localidad, gerente);
        this.carpasMax = carpasMax;
        this.banios = banios;
        this.restaurante = restaurante;
    }

    public Camping(boolean privado, double cantMetros2, String nombre, String direccion, String localidad, String gerente) {
        super(privado, cantMetros2, nombre, direccion, localidad, gerente);
    }

    public int getCarpasMax() {
        return carpasMax;
    }

    public void setCarpasMax(int carpasMax) {
        this.carpasMax = carpasMax;
    }

    public int getBanios() {
        return banios;
    }

    public void setBanios(int banios) {
        this.banios = banios;
    }

    public boolean isRestaurante() {
        return restaurante;
    }

    public void setRestaurante(boolean restaurante) {
        this.restaurante = restaurante;
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
                "\n Camping: " + "carpasMax=" + carpasMax + ", banios=" + banios + ", restaurante=" + restaurante + '}';
    }



}
