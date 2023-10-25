/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidades;

/**
 *
 * @author Sol
 */
public class AlojamientoExtrahotelero extends Alojamiento{
    protected boolean privado;
    protected double cantMetros2;

    public AlojamientoExtrahotelero(boolean privado, double cantMetros2, String nombre, String direccion, String localidad, String gerente) {
        super(nombre, direccion, localidad, gerente);
        this.privado = privado;
        this.cantMetros2 = cantMetros2;
    }

    @Override
    public String toString() {
        return super.toString()+
                "\n AlojamientoExtrahotelero: " + "privado=" + privado + ", cantMetros2=" + cantMetros2 + '}';
    }

}
