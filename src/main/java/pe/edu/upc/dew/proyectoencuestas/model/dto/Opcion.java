/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.model.dto;

/**
 *
 * @author cramirez
 */
public class Opcion {

    private Integer idOpcion;
    private String descripcion; 
 
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
  
    public void setIdOpcion(Integer idOpcion) {
        this.idOpcion = idOpcion;
    }
  
    public String getDescripcion() {
        return descripcion;
    }
  
    public Integer getIdOpcion() {
        return idOpcion;
    }
  
}
