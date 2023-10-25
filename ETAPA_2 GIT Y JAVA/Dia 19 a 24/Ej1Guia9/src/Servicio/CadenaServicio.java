/*
 Método mostrarVocales(), deberá contabilizar la cantidad de vocales que tiene la frase ingresada.

Método invertirFrase(), deberá invertir la frase ingresada y mostrarla por pantalla. Por ejemplo: Entrada: 
"casa blanca", Salida: "acnalb asac".

Método vecesRepetido(String letra), recibirá un carácter ingresado por el usuario y contabilizar cuántas 
veces se repite el carácter en la frase, por ejemplo:
Entrada: frase = "casa blanca". Salida: El carácter 'a' se repite 4 veces.

Método compararLongitud(String frase), deberá comparar la longitud de la frase que compone la clase 
con otra nueva frase ingresada por el usuario.

Método unirFrases(String frase), deberá unir la frase contenida en la clase Cadena con una nueva frase 
ingresada por el usuario y mostrar la frase resultante.

Método reemplazar(String letra), deberá reemplazar todas las letras “a” que se encuentren en la frase, 
por algún otro carácter seleccionado por el usuario y mostrar la frase resultante.

Método contiene(String letra), deberá comprobar si la frase contiene una letra que ingresa el usuario y 
devuelve verdadero si la contiene y falso si no.
 */
package Servicio;

import Entidad.Cadena;
import java.util.Scanner;

/**
 *
 * @author Sol
 */
public class CadenaServicio {

    Cadena cad = new Cadena();
    Scanner insert = new Scanner(System.in);

    public Cadena crearFrase() {
        System.out.println("Ingresar una frase");
        cad.setFrase(insert.nextLine());
        return new Cadena(cad.getFrase());
    }

    public String getFras() {
        String resultado = cad.getFrase();
        return resultado;
    }

    public void mostrarVocales(Cadena cad) {
        int vocal = 0;
        for (int i = 0; i < cad.getLongitud(); i++) {
            char letra = cad.getFrase().charAt(i);
            if (letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u') {
                vocal++;
            }
        }
        System.out.println(" Se encontraron " + vocal + " vocales");
    }

    public void invertirFrase(String getFras) {
        String reverso = "";
        int j = 0;
        int lg = getFras.length();
        System.out.println(lg);
        for (int i = lg - 1; i >= 0; i--) {
            reverso += getFras.charAt(i);
        }
        System.out.println(reverso);
    }

    public void vecesRepetido(String getFras) {
        System.out.println("Ingrese un caracter para contabilizar cuantas veces se repite en la frase");
        char letra = insert.nextLine().charAt(0);
        int cont = 0;
        for (int i = 0; i < getFras.length(); i++) {
            if (getFras.charAt(i) == letra) {
                cont++;
            }
        }
        System.out.println("La letra " + letra + " se contabilizo " + cont + " veces.");
    }
    public void compararLongitud(String getFras) {
        System.out.println("Ingrese una frase nueva para comparar su longitud con la primera frase ingresada");
        String otraFrase = insert.nextLine();
       
        if (getFras.length()==otraFrase.length()) {
            System.out.println("Ambas frases tienen la misma longitud");
        }else {
            System.out.println("Las frases difieren de longitud");
        }
    }
    
    public void unirFrases(String getFras) {
        System.out.println("Ingrese otra frase para unirla a la primera frase ingresada");
        String otraFrase = insert.nextLine();
        String nuevaFrase = getFras().concat(otraFrase);
        System.out.println(nuevaFrase);
    }
    
    public void reemplazar(String getFras) {
        String letra = "@";
        String nuevaFrase = getFras.replace("a", letra);
        System.out.println(nuevaFrase);
    }
    
    public void contiene(String getFras) {
        System.out.println("Ingrese un caracter para determinar si es contenido por la frase");
        String letra = insert.next();
       boolean resultado = getFras.contains(letra);
        System.out.println("La frase contiene la letra ingresada: " + resultado);
    }
}

/*public final Scanner leer = new Scanner(System.in);

    private Cadena contruirFrase() {
        System.out.println(" Ingresa una frase");
        String Frase = leer.nextLine();
        return new Cadena(Frase);
    }

    public void mostrarVocales() {
        Cadena p1 = contruirFrase();
        int vocal = 0;
        int lg = p1.getLongitud();
        for (int i = 0; i < lg; i++) {
            char letra = p1.getFrase().charAt(i);

            if ('a' == letra || 'e' == letra || 'i' == letra || 'o' == letra || 'u' == letra) {
                vocal++;
            }
        }
        System.out.println(" Se encontraron " + vocal + " vocales");
    }

    public void invertirFrase() {
        Cadena p1 = contruirFrase();
        int lg = p1.getLongitud();
        String reverso = "";
        for (int i = lg - 1; i > -1; i--) {

            reverso += p1.getFrase().charAt(i);

        }
        System.out.println(reverso);
    }

    public void vecesRepetido() {
        
        Cadena p1 = contruirFrase();
        System.out.println(" Ingrese la letra a buscar en la frase");
        char h = leer.nextLine().toUpperCase().charAt(0);
        int vocal = 0;
        int lg = p1.getLongitud();
        for (int i = 0; i < lg; i++) {
        char l = p1.getFrase().charAt(i);

            if (h == l) {
                vocal++;
            }
        }
        System.out.println(" Se encontro "+ h +" "+ vocal + "veces");
    }
    public void compararLongitud() {
        Cadena p1 = contruirFrase();
        System.out.println(" Ingrese la otra frase a comparar");
        double num =  p1.getFrase().compareTo(leer.nextLine());
      if(num == 0 ){
          System.out.println(" Son iguales");
      }else{
          System.out.println(" No son iguales");
      }
        
    }
    public void unirFrases() {
          Cadena p1 = contruirFrase();
          System.out.println(" Ingresa otra frase ");
          System.out.println(p1.getFrase().concat(leer.nextLine()));
          
    }
    public void reemplazar() {
         Cadena p1 = contruirFrase();
         System.out.println(" ingresa el caracter que quiere reemplazar por la letra A ");
         char l = leer.nextLine().toUpperCase().charAt(0);
        String frasen= p1.getFrase().replace('a',l);
          System.out.println(frasen);
    }
    public boolean contiene() {
        
        Cadena p1 = contruirFrase();
        System.out.println(" ingresa la letra");
        String ll = leer.nextLine();
       boolean frase= p1.getFrase().contains(ll);
       
       return frase;
    }

 */
