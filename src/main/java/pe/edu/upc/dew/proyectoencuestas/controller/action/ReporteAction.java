/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.controller.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import pe.edu.upc.dew.proyectoencuestas.form.ReporteForm;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.time.Day;
import org.jfree.data.time.TimeSeries;
import org.jfree.data.time.TimeSeriesCollection;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Reporte;
import pe.edu.upc.dew.proyectoencuestas.service.bo.ReporteService;
import pe.edu.upc.dew.proyectoencuestas.service.bo.ReporteServiceImpl;

/**
 *
 * @author Owner
 */
public class ReporteAction  extends DispatchAction{


    private ReporteService reporteBO;

      public ActionForward iniciar(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

              List<Reporte> reporte =null;


              this.reporteBO =  new ReporteServiceImpl();
              reporte= reporteBO.getCantidadVotosxCandidato("1");
         
              
                String basePath = request.getSession().getId();
                System.out.println("rutaaaaaaaaaaaaaa "+basePath);

           PieChart(reporte);
          // PieChart3D();
         //  XYSeries();
         //  BarChartA();
         //  BarChartB();
         //  BarChart3D();
         //  TimeSeries();
 
             ReporteForm reporteForm = (ReporteForm)form;

             request.setAttribute("encuestaDes", reporteForm.getDescripcion());


           System.out.println("\n Iniciando Reportes");
           return mapping.findForward("exito");
    }


/*
      	public static CategoryDataset creaDataset(List lista) {
		DefaultCategoryDataset dataset = new DefaultCategoryDataset();

		Map fila=null;
		for (int i=0; i<lista.size(); i++){
			fila=(Map)lista.get(i);
			dataset.addValue(new Double((String)fila.get("3")), (String)fila.get("2"), (String)fila.get("1"));
		}
		return dataset;
	}

 */



      public void PieChart(List<Reporte> lista) {

         // Create a simple pie chart

        DefaultPieDataset pieDataset = new DefaultPieDataset();
        String titulo="";



        for (int i=0; i<lista.size(); i++){
               pieDataset.setValue(lista.get(i).getDescripcion(),new Integer(lista.get(i).getCantidad()));
               titulo=lista.get(i).getTitulo();
             }

         JFreeChart chart = ChartFactory.createPieChart( titulo,pieDataset,true,    true,    false);

         try {


             ChartUtilities.saveChartAsJPEG(new File("D:/graficos/chart4.jpg"), chart, 500, 300);
            
         } catch (Exception e) {
             System.out.println("Problem occurred creating chart.");
             System.out.println(getClass().getResource("/tupath/path"));
         }

     }

      public void PieChart3D() {
	 DefaultPieDataset data = new DefaultPieDataset();
         data.setValue("A", new Integer(75));
         data.setValue("B", new Integer(10));
         data.setValue("C", new Integer(10));
         data.setValue("D", new Integer(5));

  	 JFreeChart chart = ChartFactory.createPieChart3D("torta", data, true,  true, true);

	 try {

             ChartUtilities.saveChartAsJPEG(new File("D:chartPie3d.jpg"), chart, 500, 300);

         } catch (Exception e) {

             System.out.println("Problem occurred creating chart.");

         }
	}


          public void BarChartA() {

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
          }


      public void BarChartB() {

           // Create a simple Bar chart
           DefaultCategoryDataset dataset = new DefaultCategoryDataset();
           dataset.setValue(6, "Profit", "Jane");
           dataset.setValue(7, "Profit", "Tom");
           dataset.setValue(8, "Profit", "Jill");
           dataset.setValue(5, "Profit", "John");
           dataset.setValue(12, "Profit", "Fred");

           JFreeChart chart = ChartFactory.createBarChart("Comparison between Salesman",  "Salesman", "Profit", dataset, PlotOrientation.VERTICAL, false,  true, false);
           JFreeChart chartH = ChartFactory.createBarChart("Comparison between Salesman",  "Salesman", "Profit", dataset, PlotOrientation.HORIZONTAL, false,  true, false);
           try {

               ChartUtilities.saveChartAsJPEG(new File("D:chartBC.jpg"), chart, 500, 300);
               ChartUtilities.saveChartAsJPEG(new File("D:chartBCHorizontal.jpg"), chartH, 500, 300);

           } catch (IOException e) {

               System.err.println("Problem occurred creating chart.");

           }

       }

      public void BarChart3D() {

           // Create a simple Bar chart

           DefaultCategoryDataset dataset = new DefaultCategoryDataset();

           dataset.setValue(6, "Profit1", "Jose");
           dataset.setValue(3, "Profit2", "Jane");
           dataset.setValue(7, "Profit3", "Tom");
           dataset.setValue(10,"Profit4", "Maria");
           dataset.setValue(8, "Profit5", "Jill");
           dataset.setValue(8, "Profit6", "Juan");
           dataset.setValue(5, "Profit7", "John");
           dataset.setValue(6, "Profit8", "Julia");
           dataset.setValue(12, "Profit9", "Fred");
           dataset.setValue(5, "Profit10", "Alberto");

	   // Profit1, Profit2 represent the row keys
           // Jane, Tom, Jill, etc. represent the column keys
           JFreeChart chart = ChartFactory.createBarChart3D( "Comparison between Salesman", "Salesman", "Value ($)", dataset, PlotOrientation.VERTICAL, true, true, false );

           JFreeChart chartH = ChartFactory.createBarChart3D( "Comparison between Salesman", "Salesman", "Value ($)", dataset, PlotOrientation.HORIZONTAL, true, true, false );
           try {

               ChartUtilities.saveChartAsJPEG(new File("D:chart3d.jpg"), chart, 500,   300);
               ChartUtilities.saveChartAsJPEG(new File("D:chart3dHorizontal.jpg"), chartH, 500,   300);

           } catch (IOException e) {

               System.err.println("Problem occurred creating chart.");

           }

       }


           public void XYSeries() {

         //Create a simple XY chart
         XYSeries series = new XYSeries("XYGraph");
         series.add(1, 1);
         series.add(1, 2);
         series.add(2, 1);
         series.add(3, 9);
         series.add(4, 10);

         //Add the series to your data set
         XYSeriesCollection dataset = new XYSeriesCollection();

         dataset.addSeries(series);
         //Generate the graph

         JFreeChart chart = ChartFactory.createXYLineChart("XY Chart", // Title
                             "x-axis", // x-axis Label
                             "y-axis", // y-axis Label
                             dataset, // Dataset
                             PlotOrientation.VERTICAL, // Plot Orientation
                             true, // Show Legend
                             true, // Use tooltips
                             false // Configure chart to generate URLs?
             );

         try {

             ChartUtilities.saveChartAsJPEG(new File("D:chartg.jpg"), chart, 500, 300);

         } catch (IOException e) {

             System.err.println("Problem occurred creating chart.");

         }

     }
      public void TimeSeries() {

            // Create a time series chart

            TimeSeries pop = new TimeSeries("Population", Day.class);
            pop.add(new Day(10, 1, 2004), 100);
            pop.add(new Day(10, 2, 2004), 150);
            pop.add(new Day(10, 3, 2004), 250);
            pop.add(new Day(10, 4, 2004), 275);
            pop.add(new Day(10, 5, 2004), 325);
            pop.add(new Day(10, 6, 2004), 425);

            TimeSeriesCollection dataset = new TimeSeriesCollection();
            dataset.addSeries(pop);
            JFreeChart chart = ChartFactory.createTimeSeriesChart("Population of CSC408 Town", "Date","Population",     dataset, true,    true,     false);

   try {

     ChartUtilities.saveChartAsJPEG(new File("D:chartTS.jpg"), chart, 500, 300);

   } catch (IOException e) {

     System.err.println("Problem occurred creating chart.");

   }

}

    
}
