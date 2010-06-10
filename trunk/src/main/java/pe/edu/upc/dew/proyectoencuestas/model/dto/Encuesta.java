/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.model.dto;

/**
 *
 * @author cramirez
 */
public class Encuesta {

    private Integer idEncuesta;
    private String nombre;
    private String fechaInicio;
    private String fechaFin;
    private Integer muestra;
    private Ubigeo ubigeo;

    public void setUbigeo(Ubigeo ubigeo) {
        this.ubigeo = ubigeo;
    }

    public Ubigeo getUbigeo() {
        return ubigeo;
    }

    public void setIdEncuesta(Integer idEncuesta) {
        this.idEncuesta = idEncuesta;
    }

    public Integer getIdEncuesta() {
        return idEncuesta;
    }

    public void setFechaFin(String fechaFin) {
        this.fechaFin = fechaFin;
    }

    public void setFechaInicio(String fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public void setMuestra(Integer muestra) {
        this.muestra = muestra;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFechaFin() {
        return fechaFin;
    }

    public String getFechaInicio() {
        return fechaInicio;
    }

    public Integer getMuestra() {
        return muestra;
    }

    public String getNombre() {
        return nombre;
    }


}
