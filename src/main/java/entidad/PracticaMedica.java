/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidad;

import java.util.Random;

/**
 *
 * @author alumno
 */
public class PracticaMedica {
    private String nombre;
    private int cantidad;
    private boolean estado = true;
    private String causa;
    private Random md = new Random();
    private double numEstado = md.nextDouble();
    private int motivo = 0;
    private String[] causas = {"Desconocido", "Falta firma médico", "Saturación de dicha práctica", "Datos incorrectos", "Tratamiento excesivamente caro"};

    private boolean comprobarEstado(){
        if(getNumEstado()<0.5){
            setEstado(false);
            motivo = (int) (getMd().nextDouble()*5);
            setCausa(getCausas()[motivo]);
        }
        return isEstado();
    }

    /**
     * @return the nombre
     */
    private String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    private void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the cantidad
     */
    private int getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    private void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the estado
     */
    private boolean isEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    private void setEstado(boolean estado) {
        this.estado = estado;
    }

    /**
     * @return the causa
     */
    private String getCausa() {
        return causa;
    }

    /**
     * @param causa the causa to set
     */
    private void setCausa(String causa) {
        this.causa = causa;
    }

    /**
     * @return the md
     */
    private Random getMd() {
        return md;
    }

    /**
     * @param md the md to set
     */
    private void setMd(Random md) {
        this.md = md;
    }

    /**
     * @return the numEstado
     */
    private double getNumEstado() {
        return numEstado;
    }

    /**
     * @param numEstado the numEstado to set
     */
    private void setNumEstado(double numEstado) {
        this.numEstado = numEstado;
    }

    /**
     * @return the causas
     */
    private String[] getCausas() {
        return causas;
    }

    /**
     * @param causas the causas to set
     */
    private void setCausas(String[] causas) {
        this.causas = causas;
    }
}
