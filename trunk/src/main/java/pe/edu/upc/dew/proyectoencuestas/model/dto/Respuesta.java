/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.model.dto;

/**
 *
 * @author cramirez
 */
public class Respuesta {

    private Integer idCuestionario;
    private Integer idUsuario;
    private Integer idPregunta;
    private Integer idOpcion;

    public void setIdCuestionario(Integer idCuestionario) {
        this.idCuestionario = idCuestionario;
    }

    public void setIdOpcion(Integer idOpcion) {
        this.idOpcion = idOpcion;
    }

    public void setIdPregunta(Integer idPregunta) {
        this.idPregunta = idPregunta;
    }

    public void setIdUsuario(Integer idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Integer getIdCuestionario() {
        return idCuestionario;
    }

    public Integer getIdOpcion() {
        return idOpcion;
    }

    public Integer getIdPregunta() {
        return idPregunta;
    }

    public Integer getIdUsuario() {
        return idUsuario;
    }
   

}
