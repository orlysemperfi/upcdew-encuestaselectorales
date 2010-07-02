/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.model.dto;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author cramirez
 */
public class Pregunta  implements java.io.Serializable{

    private Integer idPregunta;
    private String descripcion;
    private List<Opcion> opciones;
    private Integer tipo;
    private Integer orden;

    public Pregunta()
    {
        opciones = new ArrayList<Opcion>();
    }

    public void setOrden(Integer orden) {
        this.orden = orden;
    }

    public Integer getOrden() {
        return orden;
    }

    public Integer getTipo() {
        return tipo;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setIdPregunta(Integer idPregunta) {
        this.idPregunta = idPregunta;
    }

    public void setTipo(Integer tipo) {
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
