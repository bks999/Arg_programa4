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
public class YateLujo extends Barco {

    private double potenciaCVyateLujo;
    private int numCamarotes;

    public YateLujo(double potenciaCVyateLujo, int numCamarotes, int matricula, double eslora, int anioFabricacion) {
        super(matricula, eslora, anioFabricacion);
        this.potenciaCVyateLujo = potenciaCVyateLujo;
        this.numCamarotes = numCamarotes;
    }

    public double getPotenciaCVyateLujo() {
        return potenciaCVyateLujo;
    }

    public void setPotenciaCVyateLujo(double potenciaCVyateLujo) {
        this.potenciaCVyateLujo = potenciaCVyateLujo;
    }

    public int getNumCamarotes() {
        return numCamarotes;
    }

    public void setNumCamarotes(int numCamarotes) {
        this.numCamarotes = numCamarotes;
    }

    @Override
    public double calcularModulo() {
        return super.calcularModulo() + potenciaCVyateLujo + numCamarotes;
    }

    @Override
    public String toString() {
        return "YateLujo{" + "potenciaCVyateLujo= " + potenciaCVyateLujo + ", numCamarotes= " + numCamarotes + ", matricula= " + matricula + ", eslora= " + eslora + ", anio de fabricacion= " + anioFabricacion +'}';
    }

}
