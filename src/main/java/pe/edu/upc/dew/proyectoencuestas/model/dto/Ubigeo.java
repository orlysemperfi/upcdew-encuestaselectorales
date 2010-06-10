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

    private Integer idUbigeo;
    private String codDepartamento;
    private String codProvincia;
    private String codDistrito;
    private String descripcion;

    public void setCodDepartamento(String codDepartamento) {
        this.codDepartamento = codDepartamento;
    }

    public void setCodDistrito(String codDistrito) {
        this.codDistrito = codDistrito;
    }

    public void setCodProvincia(String codProvincia) {
        this.codProvincia = codProvincia;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setIdUbigeo(Integer idUbigeo) {
        this.idUbigeo = idUbigeo;
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

    public String getDescripcion() {
        return descripcion;
    }

    public Integer getIdUbigeo() {
        return idUbigeo;
    }

}
