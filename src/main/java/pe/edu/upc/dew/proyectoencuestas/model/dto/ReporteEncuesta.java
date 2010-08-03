/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.model.dto;

import java.util.ArrayList;
import java.util.List;


public class ReporteEncuesta {

    private String idEncuesta;
    private String idPregunta;
    private String desEncuesta;
    private String desPregunta;
    private String rutaReporte;
    private List<Reporte> resultado;


   public ReporteEncuesta()
    {
        resultado = new ArrayList<Reporte>();
    }

    public String getDesPregunta() {
        return desPregunta;
    }

    public void setDesPregunta(String desPregunta) {
        this.desPregunta = desPregunta;
    }

    public String getDesEncuesta() {
        return desEncuesta;
    }

    public void setDesEncuesta(String desEncuesta) {
        this.desEncuesta = desEncuesta;
    }

    public String getIdEncuesta() {
        return idEncuesta;
    }

    public void setIdEncuesta(String idEncuesta) {
        this.idEncuesta = idEncuesta;
    }

    public String getIdPregunta() {
        return idPregunta;
    }

    public void setIdPregunta(String idPregunta) {
        this.idPregunta = idPregunta;
    }

    public String getRutaReporte() {
        return rutaReporte;
    }

    public void setRutaReporte(String rutaReporte) {
        this.rutaReporte = rutaReporte;
    }
 
    public List<Reporte> getResultado() {
        return resultado;
    }

    public void setResultado(List<Reporte> resultado) {
        this.resultado = resultado;
    }


    

}
