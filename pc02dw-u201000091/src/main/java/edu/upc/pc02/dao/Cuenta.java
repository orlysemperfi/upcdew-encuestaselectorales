/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.pc02.dao;

/**
 *
 * @author Owner
 */
public class Cuenta {

    private Integer idCuenta;
    private String estado;
    private String tipo;
    private String moneda;
    private String saldo;


    public Cuenta(Integer idCuenta, String estado, String tipo, String moneda, String saldo) {
        this.idCuenta = idCuenta;
        this.estado = estado;
        this.tipo = tipo;
        this.moneda = moneda;
        this.saldo = saldo;
    }

    public Cuenta(Integer idCuenta, String tipo) {
         this.idCuenta = idCuenta;
         this.tipo = tipo;
    }



    /**
     * @return the idCuenta
     */
    public Integer getIdCuenta() {
        return idCuenta;
    }

    /**
     * @param idCuenta the idCuenta to set
     */
    public void setIdCuenta(Integer idCuenta) {
        this.idCuenta = idCuenta;
    }

    /**
     * @return the estado
     */
    public String getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(String estado) {
        this.estado = estado;
    }

    /**
     * @return the tipo
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * @param tipo the tipo to set
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    /**
     * @return the moneda
     */
    public String getMoneda() {
        return moneda;
    }

    /**
     * @param moneda the moneda to set
     */
    public void setMoneda(String moneda) {
        this.moneda = moneda;
    }

    /**
     * @return the saldo
     */
    public String getSaldo() {
        return saldo;
    }

    /**
     * @param saldo the saldo to set
     */
    public void setSaldo(String saldo) {
        this.saldo = saldo;
    }


    



}
