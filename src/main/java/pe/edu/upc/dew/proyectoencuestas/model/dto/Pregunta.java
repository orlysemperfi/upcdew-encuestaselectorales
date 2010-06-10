/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.model.dto;

import java.util.List;

/**
 *
 * @author cramirez
 */
public class Pregunta {

    private Integer idPregunta;
    private String descripcion;
    private List<Opcion> opciones;
    private String tipo;
    private String tipoGrafico;
    private Integer orden;

    public void setTipoGrafico(String tipoGrafico) {
        this.tipoGrafico = tipoGrafico;
    }

    public String getTipoGrafico() {
        return tipoGrafico;
    }

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
