/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package guia8ex2.servicio;

import guia8ex2.entidades.Tiempo;
import java.util.Scanner;

public class ServicioTiempo {

    private Scanner leer = new Scanner(System.in);
    private Tiempo t = new Tiempo();

    public void menu() throws InterruptedException {
        System.out.println("ingresa las horas");
        t.setHoras(leer.nextInt());

        while (t.getHoras() > 24 || t.getHoras() < 0) {
            System.out.println("las horas deben ser de 0 a 24 hs, vuelva a escribir las horas");
            t.setHoras(leer.nextInt());
        }
        System.out.println("ingresa los minutos");
        t.setMinutos(leer.nextInt());

        while (t.getMinutos() > 60 || t.getMinutos() < 0) {
            System.out.println("los minutos tienes que estar entre 0 y 60 , vuelva a escribirlos");
            t.setMinutos(leer.nextInt());
        }
        System.out.println("ingresa los segundos");
        t.setSegundos(leer.nextInt());

        while (t.getSegundos() > 60 || t.getSegundos() < 0) {
            System.out.println("los segundos tienen que estar entre 0 y 60, vuelva a escribirlos");
            t.setSegundos(leer.nextInt());
        }
        imprimirHoraCompleta();

    }

    private void imprimirHoraCompleta() throws InterruptedException {
        int hor = t.getHoras();
        int min = t.getMinutos();
        int seg = t.getSegundos();

        while (hor < 24) {

            if (seg == 60) {

                seg = 0;
                min = min + 1;
            }
            if (min == 60) {
                min = 0;
                hor = hor + 1;
            }
            Thread.sleep(1000);
            System.out.println("la hora es; " + hor + " horas, " + min + " minutos, " + seg + " segundos");
            seg++;
        }

    }
}
