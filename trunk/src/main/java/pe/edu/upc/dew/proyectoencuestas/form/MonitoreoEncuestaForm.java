/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionForm;
/**
 *
 * @author Gaby
 */
public class MonitoreoEncuestaForm extends ActionForm{

    private String encuesta; //nombre del combo encuesta

    /**
     * @return the encuesta
     */
    public String getEncuesta() {
        return encuesta;
    }

    /**
     * @param encuesta the encuesta to set
     */
    public void setEncuesta(String encuesta) {
        this.encuesta = encuesta;
    }

   



}
