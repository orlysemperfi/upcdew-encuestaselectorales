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

    private String idencuesta;

    /**
     * @return the idencuesta
     */
    public String getIdencuesta() {
        return idencuesta;
    }

    /**
     * @param idencuesta the idencuesta to set
     */
    public void setIdencuesta(String idencuesta) {
        this.idencuesta = idencuesta;
    }



}
