/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.model.dto;

import java.util.List;
/**
 *
 * @author Gaby
 */
public class ResultadoEncuesta {

private int id_enc;
private int  id_opc;
private int id_pre;
private String cod_usu;
private String fecha_res;
private List<Encuesta> encuestas;

    /**
     * @return the id_enc
     */
    public int getId_enc() {
        return id_enc;
    }

    /**
     * @param id_enc the id_enc to set
     */
    public void setId_enc(int id_enc) {
        this.id_enc = id_enc;
    }

    /**
     * @return the id_opc
     */
    public int getId_opc() {
        return id_opc;
    }

    /**
     * @param id_opc the id_opc to set
     */
    public void setId_opc(int id_opc) {
        this.id_opc = id_opc;
    }

    /**
     * @return the id_pre
     */
    public int getId_pre() {
        return id_pre;
    }

    /**
     * @param id_pre the id_pre to set
     */
    public void setId_pre(int id_pre) {
        this.id_pre = id_pre;
    }

    /**
     * @return the cod_usu
     */
    public String getCod_usu() {
        return cod_usu;
    }

    /**
     * @param cod_usu the cod_usu to set
     */
    public void setCod_usu(String cod_usu) {
        this.cod_usu = cod_usu;
    }

    /**
     * @return the fecha_res
     */
    public String getFecha_res() {
        return fecha_res;
    }

    /**
     * @return the encuestas
     */
    public List<Encuesta> getEncuestas() {
        return encuestas;
    }

    /**
     * @param encuestas the encuestas to set
     */
    public void setEncuestas(List<Encuesta> encuestas) {
        this.encuestas = encuestas;
    }

}
