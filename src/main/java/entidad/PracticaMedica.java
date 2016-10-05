/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidad;

/**
 *
 * @author alumno
 */
public class PracticaMedica {
    private String nombre;
    private String cantidad;
    private String estado;
    private String causa;

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
    private String getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    private void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the estado
     */
    private String getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    private void setEstado(String estado) {
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

}
