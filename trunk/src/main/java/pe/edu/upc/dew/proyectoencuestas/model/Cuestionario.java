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

    private Integer idCuestionario;
    private Encuesta encuesta;
    private String titulo;
    private List<Pregunta> preguntas;

    public Integer getIdCuestionario() {
        return idCuestionario;
    }

    public void setIdCuestionario(Integer idCuestionario) {
        this.idCuestionario = idCuestionario;
    }   

    public void setEncuesta(Encuesta encuesta) {
        this.encuesta = encuesta;
    }

    public Encuesta getEncuesta() {
        return encuesta;
    }
   
    public void setPreguntas(List<Pregunta> preguntas) {
        this.preguntas = preguntas;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }  

    public List<Pregunta> getPreguntas() {
        return preguntas;
    }

    public String getTitulo() {
        return titulo;
    }
  

}
