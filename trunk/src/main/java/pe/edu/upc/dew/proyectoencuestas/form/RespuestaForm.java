/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
//import org.apache.struts.action.ActionMessage;

/**
 *
 * @author cramirez
 */
public class RespuestaForm extends org.apache.struts.action.ActionForm {
    
    private String idEncuesta;

    //preguntas
    private String pregId1;
    private String pregId2;
    private String pregId3;
    private String pregId4;
    private String pregId5;

    //opciones marcadas
    private String preg1;
    private String preg2;
    private String preg3;
    private String preg4;
    private String preg5;

    public String getIdEncuesta() {
        return idEncuesta;
    }

    public void setIdEncuesta(String idEncuesta) {
        this.idEncuesta = idEncuesta;
    }

    public String getPreg1() {
        return preg1;
    }

    public void setPreg1(String preg1) {
        this.preg1 = preg1;
    }

    public String getPreg2() {
        return preg2;
    }

    public void setPreg2(String preg2) {
        this.preg2 = preg2;
    }

    public String getPreg3() {
        return preg3;
    }

    public void setPreg3(String preg3) {
        this.preg3 = preg3;
    }

    public String getPreg4() {
        return preg4;
    }

    public void setPreg4(String preg4) {
        this.preg4 = preg4;
    }

    public String getPreg5() {
        return preg5;
    }

    public void setPreg5(String preg5) {
        this.preg5 = preg5;
    }

    public String getPregId1() {
        return pregId1;
    }

    public void setPregId1(String pregId1) {
        this.pregId1 = pregId1;
    }

    public String getPregId2() {
        return pregId2;
    }

    public void setPregId2(String pregId2) {
        this.pregId2 = pregId2;
    }

    public String getPregId3() {
        return pregId3;
    }

    public void setPregId3(String pregId3) {
        this.pregId3 = pregId3;
    }

    public String getPregId4() {
        return pregId4;
    }

    public void setPregId4(String pregId4) {
        this.pregId4 = pregId4;
    }

    public String getPregId5() {
        return pregId5;
    }

    public void setPregId5(String pregId5) {
        this.pregId5 = pregId5;
    }
    /**
     *
     */
    public RespuestaForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
//        if (getName() == null || getName().length() < 1) {
//            errors.add("name", new ActionMessage("error.name.required"));
//            // TODO: add 'error.name.required' key to your resources
//        }
        return errors;
    }
}
