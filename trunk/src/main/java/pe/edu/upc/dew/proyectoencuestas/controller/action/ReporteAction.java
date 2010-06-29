/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.controller.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import pe.edu.upc.dew.proyectoencuestas.form.ReporteForm;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

/**
 *
 * @author Owner
 */
public class ReporteAction  extends DispatchAction{


      public ActionForward iniciar(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {


   	//Crear el dataset...
          DefaultCategoryDataset dataset = new DefaultCategoryDataset();
          dataset.addValue(1.0, "Fila 1", "Columna 1");
          dataset.addValue(5.0, "Fila 1", "Columna 2");
          dataset.addValue(3.0, "Fila 1", "Columna 3");
          dataset.addValue(2.0, "Fila 2", "Columna 1");
          dataset.addValue(3.0, "Fila 2", "Columna 2");
          dataset.addValue(2.0, "Fila 2", "Columna 3");
            //Crear el gráfico...
          JFreeChart chart = ChartFactory.createBarChart("Mi gráfico","Periodos","Unidades",dataset, PlotOrientation.VERTICAL,true,true,false);

          //crear y visualizar una ventana...
          ChartFrame frame = new ChartFrame("First", chart);
          frame.pack();
          frame.setVisible(true);



             ReporteForm reporteForm = (ReporteForm)form;

             request.setAttribute("encuestaDes", reporteForm.getDescripcion());


           System.out.println("\n Iniciando Reportes");
           return mapping.findForward("exito");
    }
    
}
