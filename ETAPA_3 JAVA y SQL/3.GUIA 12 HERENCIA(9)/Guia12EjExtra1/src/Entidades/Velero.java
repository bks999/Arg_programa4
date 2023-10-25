/*

• Número de mástiles para veleros.
• Potencia en CV para barcos a motor.
• Potencia en CV y número de camarotes para yates de lujo.

 */
package Entidades;

/**
 *
 * @author Sol
 */
public class Velero extends Barco{
    private int numMastiles;

    public Velero(int numMastiles, int matricula, double eslora, int anioFabricacion) {
        super(matricula, eslora, anioFabricacion);
        this.numMastiles = numMastiles;
    }

    public int getNumMastiles() {
        return numMastiles;
    }

    public void setNumMastiles(int numMastiles) {
        this.numMastiles = numMastiles;
    }

    @Override
    public double calcularModulo() {
        return super.calcularModulo() + numMastiles;
    }

    @Override
    public String toString() {
        return "Velero{" + "numMastiles=" + numMastiles + ", matricula= " + matricula + ", eslora= " + eslora + ", anio de fabricacion= " + anioFabricacion +'}';
    }

}
