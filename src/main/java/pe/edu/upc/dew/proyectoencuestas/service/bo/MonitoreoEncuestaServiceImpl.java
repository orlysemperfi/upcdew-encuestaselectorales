package pe.edu.upc.dew.proyectoencuestas.service.bo;

//import java.sql.SQLException;

import java.util.List;
//import javax.naming.NamingException;
import pe.edu.upc.dew.proyectoencuestas.dao.MonitoreoEncuestaDao;
import pe.edu.upc.dew.proyectoencuestas.dao.MonitoreoEncuestaDaoImpl;
import pe.edu.upc.dew.proyectoencuestas.model.dto.ResultadoEncuesta;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Encuesta;
import pe.edu.upc.dew.proyectoencuestas.service.bo.MonitoreoEncuestaService;


/**
 *
 * @author Owner
 */
public class MonitoreoEncuestaServiceImpl  implements MonitoreoEncuestaService {

private MonitoreoEncuestaDao monitoreoEncuestaDao;

public MonitoreoEncuestaServiceImpl()
{
    monitoreoEncuestaDao =  new MonitoreoEncuestaDaoImpl();
}

public List<ResultadoEncuesta> getMonitoreoPorEncuesta(String encuesta)
{
    return monitoreoEncuestaDao.getMonitoreoPorEncuesta(encuesta);
}

public List<ResultadoEncuesta> getMonitoreoPorMayorAvanceDistritoxEncuesta(String encuesta)
{
    return monitoreoEncuestaDao.getMonitoreoPorMayorAvanceDistritoxEncuesta(encuesta);
}

public List<ResultadoEncuesta> getMonitoreoAvanceDiarioxEncuesta(String encuesta)
{
    return monitoreoEncuestaDao.getMonitoreoAvanceDiarioxEncuesta(encuesta);
}

public List<ResultadoEncuesta> getMonitoreoAvanceAcumuladoxEncuesta()
{
    return monitoreoEncuestaDao.getMonitoreoAvanceAcumuladoxEncuesta();
}

    public List<ResultadoEncuesta> getPreguntasPorEncuesta(String idEncuesta) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

}
