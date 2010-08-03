/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.util;

import java.io.File;
import java.util.List;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.data.general.DefaultPieDataset;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Reporte;

public class GeneradorGraficos {

     public String   PieChart3D(List<Reporte> lista,String ruta) {


         DefaultPieDataset pieDataset = new DefaultPieDataset();
         String titulo="";
       
         for (int i=0; i<lista.size(); i++){
               pieDataset.setValue(lista.get(i).getDescripcion(),new Integer(lista.get(i).getCantidad()));
               titulo=lista.get(i).getTitulo();
             }

  	 JFreeChart chart = ChartFactory.createPieChart3D(titulo, pieDataset , true,  true, true);
         PiePlot3D p=(PiePlot3D)chart.getPlot();
         p.setForegroundAlpha(0.5f);// opacidad de la gráfica

	 try {
                System.out.println("rutaaaaaaaxxxxx  "+ruta+".jpg");

             ChartUtilities.saveChartAsJPEG(new File(ruta+".jpg"), chart, 500, 300);

         } catch (Exception e) {

             System.out.println("Problem occurred creating chart.");

         }
	return ruta+".jpg";
     }

}
