/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.model;

import java.util.List;

/**
 *
 * @author cramirez
 */
public class Pregunta {

    public Integer idPregunta;
    public String descripcion;
    public List<Opcion> opciones;
    public String tipo;
    public Integer orden;

    public void setOrden(Integer orden) {
        this.orden = orden;
    }

    public Integer getOrden() {
        return orden;
    }

    public String getTipo() {
        return tipo;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setIdPregunta(Integer idPregunta) {
        this.idPregunta = idPregunta;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setOpciones(List<Opcion> opciones) {
        this.opciones = opciones;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public Integer getIdPregunta() {
        return idPregunta;
    }

    public List<Opcion> getOpciones() {
        return opciones;
    }

}
