/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.service.bo;

import java.util.List;
import pe.edu.upc.dew.proyectoencuestas.dao.EncuestaDao;
import pe.edu.upc.dew.proyectoencuestas.dao.EncuestaDaoImpl;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Encuesta;

/**
 *
 * @author cramirez
 */
public class EncuestaServiceImpl implements EncuestaService{

    private EncuestaDao encuestaDao;

    public EncuestaServiceImpl(){
        this.encuestaDao = new EncuestaDaoImpl();
    }

    public List<Encuesta> getEncuestasPorDistritos(String distrito) {
        return encuestaDao.getEncuestasPorDistritos(distrito);
    }

}
