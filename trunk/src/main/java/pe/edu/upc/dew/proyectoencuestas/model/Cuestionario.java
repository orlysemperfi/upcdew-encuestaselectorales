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
public class Cuestionario {

    private Integer cuestionarioId;
    private String titulo;
    private List<Pregunta> preguntas;

    public void setCuestionarioId(Integer cuestionarioId) {
        this.cuestionarioId = cuestionarioId;
    }

    public void setPreguntas(List<Pregunta> preguntas) {
        this.preguntas = preguntas;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Integer getCuestionarioId() {
        return cuestionarioId;
    }

    public List<Pregunta> getPreguntas() {
        return preguntas;
    }

    public String getTitulo() {
        return titulo;
    }
  

}
