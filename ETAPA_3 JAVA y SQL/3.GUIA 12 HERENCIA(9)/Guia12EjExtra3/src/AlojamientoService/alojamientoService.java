/*
Realizar un sistema de consulta que le permite al usuario consultar por diferentes criterios:
• todos los alojamientos.
• todos los hoteles de más caro a más barato.
• todos los campings con restaurante
• todos las residencias que tienen descuento.
 */
package AlojamientoService;

import Entidades.Alojamiento;
import Entidades.Camping;
import Entidades.Hotel;
import Entidades.Hotel4Stars;
import Entidades.Hotel5Stars;
import Entidades.Residencia;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/**
 *
 * @author Sol
 */
public class alojamientoService {

    private ArrayList<Alojamiento> al;

    public alojamientoService() {
        al = new ArrayList<>();
        Alojamiento hotel1 = new Hotel5Stars(true, "El Meson", 100, 5, 7, 1, 160, 320, 14, 0, "Alejando 1", "Balcarce 252", "Salta", "Mariana Pascual");
        Alojamiento hotel2 = new Hotel5Stars(true, "Restaurante Patagonia", 80, 6, 43, 2, 162, 300, 5, 0, "Llao Llao Resort Hotel", "Av. Ezequiel Bustillo Km. 25", "Bariloche", "Natalia");
        Alojamiento hotel3 = new Hotel4Stars(false, "DesignResto", 60, 78, 160, 4, 0, "DesignSuites Bariloche", "Av. Exequiel Bustillo 2500", "Bariloche", "German");
        Alojamiento hotel4 = new Hotel4Stars(false, "Piano Bar", 50, 50, 100, 5, 0, "Hotel Cristal", "Mitre 355", "Bariloche", "Nicolas");
        Alojamiento hotel5 = new Hotel5Stars(false, "El Casco", 80, 3, 4, 1, 140, 210, 5, 0, "Huidi Hotel", "Bariloche 234", "Bariloche", "Micaela");
        Alojamiento hotel6 = new Hotel4Stars(true, "Aguila Resto", 50, 80, 150, 7, 0, "Hotel Vainilla", "Argentina 123", "Cordoba", "Jazmin");
        Alojamiento hotel7 = new Hotel4Stars(false, "ChocoResto", 120, 150, 220, 8, 0, "Hotel Sol", "Miranda 234", "El Chalten", "Sol");
        Alojamiento camp1 = new Camping(10, 2, false, true, 300, "Camping Savage", "Bosque Barrio", "Cordoba", "Yanina");
        Alojamiento camp2 = new Camping(14, 4, true, false, 350, "Camping Mina Clavera", "Terreno km15", "Mina Clavera", "Veronica");
        Alojamiento residencia1 = new Residencia(20, true, false, true, 450, "Residencia 1", "Campana 123", "Buenos Aires", "gerente anonimo");
        Alojamiento residencia2 = new Residencia(40, true, true, false, 600, "Residencia publica", "Concordia 123", "Buenos Aires", "Bernardo");

        al.add(hotel1);
        al.add(hotel2);
        al.add(hotel3);
        al.add(hotel4);
        al.add(hotel5);
        al.add(hotel6);
        al.add(hotel7);
        al.add(camp1);
        al.add(camp2);
        al.add(residencia1);
        al.add(residencia2);

        for (Alojamiento lugar : al) {
            if (lugar instanceof Hotel) {
                ((Hotel) lugar).precioHabitacion();
            }
        }
    }

    public ArrayList<Alojamiento> todosLosAlojamientos() {
        return al;
    }

    public ArrayList<Hotel> hotelesMasCarosMasBaratos() {
        ArrayList<Hotel> hoteles = new ArrayList<>();
        for (Alojamiento lugar : al) {
            if (lugar instanceof Hotel) {
                ((Hotel) lugar).precioHabitacion();
                hoteles.add((Hotel) lugar);
            }
        }
        Collections.sort(hoteles, new Comparator<Hotel>() {
            @Override
            public int compare(Hotel t, Hotel t1) {
                return (int) (t1.getPrecioHabitacion() - t.getPrecioHabitacion());
            }
        });
        return hoteles;
    }

    public ArrayList<Camping> campingsRestaurante() {
        ArrayList<Camping> campingRestaurante = new ArrayList<>();

        for (Alojamiento alojamiento : al) {
            if (alojamiento instanceof Camping && (((Camping) alojamiento).isRestaurante())) {
                campingRestaurante.add((Camping) alojamiento);
            }
        }
        return campingRestaurante;
    }

    public ArrayList<Residencia> residenciasDescuento() {
        ArrayList<Residencia> residenciaDescuento = new ArrayList<>();

        for (Alojamiento alojamiento : al) {
            if (alojamiento instanceof Residencia && (((Residencia) alojamiento).isDescuentoGremios())) {
                residenciaDescuento.add((Residencia) alojamiento);
            }
        }
        return residenciaDescuento;
    }
}
