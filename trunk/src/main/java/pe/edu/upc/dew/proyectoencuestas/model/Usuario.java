/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.model;

/**
 *
 * @author cramirez
 */
public class Usuario {

    private Integer idUsuario;
    private String dni;
    private String nombre;
    private String apellido;
    private String sexo;
    private Integer rol;
    private Ubigeo ubigeo;

    public void setUbigeo(Ubigeo ubigeo) {
        this.ubigeo = ubigeo;
    }

    public Ubigeo getUbigeo() {
        return ubigeo;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public void setIdUsuario(Integer idUsuario) {
        this.idUsuario = idUsuario;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setRol(Integer rol) {
        this.rol = rol;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getApellido() {
        return apellido;
    }

    public String getDni() {
        return dni;
    }

    public Integer getIdUsuario() {
        return idUsuario;
    }

    public String getNombre() {
        return nombre;
    }

    public Integer getRol() {
        return rol;
    }

    public String getSexo() {
        return sexo;
    }

}
