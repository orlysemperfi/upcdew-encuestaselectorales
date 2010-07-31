/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.pc02.dao;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Owner
 */
public class Cliente {

    private String numerotarjeta;
    private String pin;
    private String nombrecliente;
   
 private final ArrayList<Cuenta> cuentas;
    

    public Cliente(){
    this.cuentas=new ArrayList<Cuenta>();
    }

     public List<Cuenta> getCuentas(){
     return cuentas;
     }

    /**
     * @return the numerotarjeta
     */
    public String getNumerotarjeta() {
        return numerotarjeta;
    }

    /**
     * @param numerotarjeta the numerotarjeta to set
     */
    public void setNumerotarjeta(String numerotarjeta) {
        this.numerotarjeta = numerotarjeta;
    }

    /**
     * @return the pin
     */
    public String getPin() {
        return pin;
    }

    /**
     * @param pin the pin to set
     */
    public void setPin(String pin) {
        this.pin = pin;
    }

    /**
     * @return the nombrecliente
     */
    public String getNombrecliente() {
        return nombrecliente;
    }

    /**
     * @param nombrecliente the nombrecliente to set
     */
    public void setNombrecliente(String nombrecliente) {
        this.nombrecliente = nombrecliente;
    }


  


    

   
    

}
