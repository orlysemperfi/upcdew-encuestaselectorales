/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.form;

import org.apache.struts.action.ActionForm;

/**
 *
 * @author 2424005
 */
public class EncuestaForm extends ActionForm {


    private Integer idEncuesta;
    private String nombre;
    private String fechaInicio;
    private String fechaFin;
    private Integer muestra;
    private String estado;
    private String distrito;

    public String getDistrito() {
        return distrito;
    }

    public void setDistrito(String distrito) {
        this.distrito = distrito;
    }


    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }    
    
    public String getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(String fechaFin) {
        this.fechaFin = fechaFin;
    }

    public String getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(String fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public Integer getIdEncuesta() {
        return idEncuesta;
    }

    public void setIdEncuesta(Integer idEncuesta) {
        this.idEncuesta = idEncuesta;
    }

    public Integer getMuestra() {
        return muestra;
    }

    public void setMuestra(Integer muestra) {
        this.muestra = muestra;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

}
