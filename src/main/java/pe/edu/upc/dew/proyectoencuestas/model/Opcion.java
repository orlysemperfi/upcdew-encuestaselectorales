/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.model;

/**
 *
 * @author cramirez
 */
public class Opcion {

    private Integer idOpcion;
    private String descripcion;
    private Integer puntaje;
    private boolean estadoSeleccion;

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setEstadoSeleccion(boolean estadoSeleccion) {
        this.estadoSeleccion = estadoSeleccion;
    }

    public void setIdOpcion(Integer idOpcion) {
        this.idOpcion = idOpcion;
    }

    public void setPuntaje(Integer puntaje) {
        this.puntaje = puntaje;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public boolean isEstadoSeleccion() {
        return estadoSeleccion;
    }

    public Integer getIdOpcion() {
        return idOpcion;
    }

    public Integer getPuntaje() {
        return puntaje;
    }
  

}
