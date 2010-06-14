/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.model.dto;

/**
 *
 * @author cramirez
 */
public class Ubigeo {

    private String codDepartamento;
    private String codProvincia;
    private String codDistrito;
    private String nomDistrito;

    public String getNomDistrito() {
        return nomDistrito;
    }

    public void setNomDistrito(String nomDistrito) {
        this.nomDistrito = nomDistrito;
    }

    public void setCodDepartamento(String codDepartamento) {
        this.codDepartamento = codDepartamento;
    }

    public void setCodDistrito(String codDistrito) {
        this.codDistrito = codDistrito;
    }

    public void setCodProvincia(String codProvincia) {
        this.codProvincia = codProvincia;
    }

    public String getCodDepartamento() {
        return codDepartamento;
    }

    public String getCodDistrito() {
        return codDistrito;
    }

    public String getCodProvincia() {
        return codProvincia;
    }

}
