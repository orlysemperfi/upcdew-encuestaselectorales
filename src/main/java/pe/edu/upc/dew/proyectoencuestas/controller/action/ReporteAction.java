/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.controller.action;

import java.awt.Color;
import java.awt.GradientPaint;
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
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.CategoryLabelPositions;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.BarRenderer;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.time.Day;
import org.jfree.data.time.TimeSeries;
import org.jfree.data.time.TimeSeriesCollection;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;
import org.jfree.ui.RectangleInsets;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Reporte;
import pe.edu.upc.dew.proyectoencuestas.model.dto.ReporteEncuesta;
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
             // reporte= reporteBO.getCantidadVotos("1");


              System.out.println("verrrrrrrrrrrrrrrrrrr"+getServlet().getServletContext().getRealPath("/")+"images/");

              String ruta =getServlet().getServletContext().getRealPath("/")+"images/";

                System.out.println("rutaaaaaaaaaaaaaa "+ruta);
                 //  Quesos3D();
                 //  ComparativaBarras3D();
                 //  PieChart(reporte);
                 //PieChart3D(reporte,ruta);
                  BarChartB();
                BarChart3D();
                 //  XYSeries();
                 //  BarChartA();
                 //  BarChartB();
                 //  BarChart3D();
                 //  TimeSeries();

               
             ReporteForm reporteForm = (ReporteForm)form;

             request.setAttribute("encuestaDes", reporteForm.getDescripcion());

             System.out.println("ruta de la pagia web"+reporteForm.getRuta());

             List<ReporteEncuesta> reporteEncuesta = reporteEncuesta=reporteBO.getListarPreguntasEncuesta(reporteForm.getIdEncuesta(),ruta);
             request.setAttribute("preguntas", reporteEncuesta);

           System.out.println("\n Iniciando Reportes");
           return mapping.findForward("exito");
    }



      public void PieChart(List<Reporte> lista) {

         // Create a simple pie chart
        DefaultPieDataset pieDataset = new DefaultPieDataset();
        String titulo="";

        for (int i=0; i<lista.size(); i++){
               pieDataset.setValue(lista.get(i).getDescripcion(),new Integer(lista.get(i).getCantidad()));
               titulo=lista.get(i).getTitulo();
             }

         JFreeChart chart = ChartFactory.createPieChart( titulo,pieDataset,true,    true,    true);

         try {
             ChartUtilities.saveChartAsJPEG(new File("D:/graficos/chart4.jpg"), chart, 500, 300);
            
         } catch (Exception e) {
             System.out.println("Problem occurred creating chart.");
             System.out.println(getClass().getResource("/tupath/path"));
         }

     }

      public void PieChart3D(List<Reporte> lista,String ruta) {
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

             ChartUtilities.saveChartAsJPEG(new File(ruta+"chartPie3d.jpg"), chart, 500, 300);

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


               public void Quesos3D(){

          DefaultPieDataset pieDataset = new DefaultPieDataset();

        // Inserción de datos
        pieDataset.setValue("One", new Integer(10));
        pieDataset.setValue("Two", new Integer(20));
        pieDataset.setValue("Three", new Integer(30));
        pieDataset.setValue("Four", new Integer(10));
        pieDataset.setValue("Five", new Integer(20));
        pieDataset.setValue("Six", new Integer(10));

        //Creación de gráfica
        JFreeChart chart = ChartFactory.createPieChart3D
        ("3D Pie Chart", pieDataset, true,true,true);

        //Dibuja gráfica y también se puede cambiar las propiedades de la gráfica
        PiePlot3D p=(PiePlot3D)chart.getPlot();

        p.setForegroundAlpha(0.3f);// opacidad de la gráfica
        ChartFrame frame1=new ChartFrame("3D Pie Chart",chart);
        frame1.setVisible(true);
        frame1.setSize(300,300);

       }

       public void ComparativaBarras3D(){
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();

         //Insertamos los valores a la gráfica

        //La posicion de los valores en la grafica es le siguiente (valor, comporable fila,       //comparable columna), si se omita el ultimo valor, lo pones como "" se muestra la //gráfica en columnas simples 3D
        dataset.setValue(6, "SURCO", "Lourdes Flores");
        dataset.setValue(8, "MIRAFLORES", "Lourdes Flores");
        dataset.setValue(5, "BARRANCO", "Lourdes Flores");
        dataset.setValue(5, "SURCO", "Alex Kouri");
        dataset.setValue(3, "MIRAFLORES", "Alex Kouri");
        dataset.setValue(6, "SURCO", "Susana Villarán");
        dataset.setValue(9, "MIRAFLORES", "Susana Villarán");
        dataset.setValue(2, "SURCO", "Humberto Lai");
        dataset.setValue(4, "MIRAFLORES", "Humberto La");

        //Creación de gráfica. PlotOrientation.HORIZONTAL -> se puede poner en vertical
        JFreeChart chart = ChartFactory.createBarChart3D
        ("Comparison between Students","Students", "Marks",
        dataset, PlotOrientation.HORIZONTAL, true,true, false);
        chart.setBackgroundPaint(Color.yellow); //el fondo de la pantalla
        chart.getTitle().setPaint(Color.blue); // color del titulo


        //Dibuja gráfica y también se puede cambiar las propiedades de la gráfica
        CategoryPlot p = chart.getCategoryPlot();
        p.setRangeGridlinePaint(Color.green);
        ChartFrame frame2=new ChartFrame("3D Bar Chart",chart);
        frame2.setVisible(true);
        frame2.setSize(300,300);
   }



      public void BarChartB() {

           // Create a simple Bar chart
           DefaultCategoryDataset dataset = new DefaultCategoryDataset();
           /*
           dataset.setValue(6, "Profit1", "Jane");
           dataset.setValue(7, "Profit2", "Tom");
           dataset.setValue(8, "Profit3", "Jill");
           dataset.setValue(5, "Profit4", "John");
           dataset.setValue(12, "Profit5", "Fred");
         */
           dataset.setValue(new Integer ("6"), "", "Jane");
           dataset.setValue(new Integer ("7"), "", "Tom");
           dataset.setValue(new Integer ("8"), "", "Jill");
           dataset.setValue(new Integer ("5"), "", "John");
           dataset.setValue(new Integer ("12"),"", "Fred");
              

           JFreeChart chart = ChartFactory.createBarChart("Comparison between Salesman",  "", "", dataset, PlotOrientation.VERTICAL, false,  true, false);
           JFreeChart chartH = ChartFactory.createBarChart("Comparison between Salesman",  "", "", dataset, PlotOrientation.HORIZONTAL, false,  true, false);

           // Background del dibujo
		chart.setBackgroundPaint(Color.white);

           try {

               ChartUtilities.saveChartAsJPEG(new File("D:/graficos/chartBC.jpg"), chart, 500, 300);
               ChartUtilities.saveChartAsJPEG(new File("D:/graficos/chartBCHorizontal.jpg"), chartH, 500, 300);

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

               ChartUtilities.saveChartAsJPEG(new File("D:/graficos/chart3d.jpg"), chart, 500,   300);
               ChartUtilities.saveChartAsJPEG(new File("D:/graficos/chart3dHorizontal.jpg"), chartH, 500,   300);

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
