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
public class BarcoAMotor extends Barco{
    private double potenciaCVbarcosAmotor;

    public BarcoAMotor(double potenciaCVbarcosAmotor, int matricula, double eslora, int anioFabricacion) {
        super(matricula, eslora, anioFabricacion);
        this.potenciaCVbarcosAmotor = potenciaCVbarcosAmotor;
    }

    public double getPotenciaCVbarcosAmotor() {
        return potenciaCVbarcosAmotor;
    }

    public void setPotenciaCVbarcosAmotor(double potenciaCVbarcosAmotor) {
        this.potenciaCVbarcosAmotor = potenciaCVbarcosAmotor;
    }

    @Override
    public double calcularModulo() {
        return super.calcularModulo() + potenciaCVbarcosAmotor;
    }

    @Override
    public String toString() {
        return "BarcoAMotor{" + "potenciaCVbarcosAmotor= " + potenciaCVbarcosAmotor + ", matricula= " + matricula + ", eslora= " + eslora + ", anio de fabricacion= " + anioFabricacion +'}';
    }

}
