/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.proyectoencuestas.util;

import java.awt.Color;
import java.io.File;
import java.io.IOException;
import java.util.List;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Reporte;

public class GeneradorGraficos {


     public String factoryGrafico(List<Reporte> lista,String ruta,int idGrafico){

      String rutaGrafico="";
           switch (idGrafico) {

            case 1:

              rutaGrafico=  PieChart3D( lista, ruta);
              break;

            case 2:
                rutaGrafico=  BarChartVertical( lista, ruta);
                break;

            case 3:
                rutaGrafico=  BarChartHorizontal( lista, ruta);
                break;

            case 4:
                rutaGrafico=  PieChart( lista, ruta);
                  break;

            case 5:
                rutaGrafico=  BarChart3DVerticalA(lista,ruta);
                  break;
            case 6:
                rutaGrafico=  BarChart3DVerticalB(lista,ruta);
                  break;
            case 7:
                rutaGrafico=  BarChart3DHorizontalA(lista,ruta);
                  break;

             case 8:
                rutaGrafico=  BarChart3DHorizontalB(lista,ruta);
                  break;

                  

        }
        return rutaGrafico;

     }


       public String PieChart(List<Reporte> lista,String ruta) {

         // Create a simple pie chart
        DefaultPieDataset pieDataset = new DefaultPieDataset();
        String titulo="";

        for (int i=0; i<lista.size(); i++){
               pieDataset.setValue(lista.get(i).getDescripcion(),new Integer(lista.get(i).getCantidad()));
               titulo=lista.get(i).getTitulo();
             }

         JFreeChart chart = ChartFactory.createPieChart( "",pieDataset,true,    true,    true);

         try {
             ChartUtilities.saveChartAsJPEG(new File(ruta+".jpg"), chart, 550, 300);

         } catch (Exception e) {
             System.out.println("Problem occurred creating chart.");
             System.out.println(getClass().getResource("/tupath/path"));
         }
        return ruta+".jpg";
     }

     public String   PieChart3D(List<Reporte> lista,String ruta) {

         DefaultPieDataset pieDataset = new DefaultPieDataset();
         String titulo="";

         for (int i=0; i<lista.size(); i++){
               pieDataset.setValue(lista.get(i).getDescripcion(),new Integer(lista.get(i).getCantidad()));
               titulo=lista.get(i).getTitulo();
             }

  	 JFreeChart chart = ChartFactory.createPieChart3D("", pieDataset , true,  true, true);
         PiePlot3D p=(PiePlot3D)chart.getPlot();
         p.setForegroundAlpha(0.5f);// opacidad de la gráfica

	 try {
             System.out.println("rutaaaaaaaxxxxx  "+ruta+".jpg");
             ChartUtilities.saveChartAsJPEG(new File(ruta+".jpg"), chart, 550, 300);

         } catch (Exception e) {

             System.out.println("Problem occurred creating chart.");
         }
	return ruta+".jpg";
     }


           public String BarChartVertical(List<Reporte> lista,String ruta) {

           // Create a simple Bar chart
           DefaultCategoryDataset dataset = new DefaultCategoryDataset();
            String titulo="";

            for (int i=0; i<lista.size(); i++){
               dataset.setValue(new Integer(lista.get(i).getCantidad()),"",lista.get(i).getDescripcion());
               titulo=lista.get(i).getTitulo();
             }



           JFreeChart chart = ChartFactory.createBarChart("",  "", "", dataset, PlotOrientation.VERTICAL, false,  true, false);
         //  JFreeChart chartH = ChartFactory.createBarChart("Comparison between Salesman",  "", "", dataset, PlotOrientation.HORIZONTAL, false,  true, false);

           // Background del dibujo
	 chart.setBackgroundPaint(Color.white);

           try {

               ChartUtilities.saveChartAsJPEG(new File(ruta+".jpg"), chart, 550, 300);
             // ChartUtilities.saveChartAsJPEG(new File("D:/graficos/chartBCHorizontal.jpg"), chartH, 500, 300);

           } catch (IOException e) {

               System.err.println("Problem occurred creating chart.");

           }
        return ruta+".jpg";
       }


       public String BarChartHorizontal(List<Reporte> lista,String ruta) {

           // Create a simple Bar chart
           DefaultCategoryDataset dataset = new DefaultCategoryDataset();
            String titulo="";

            for (int i=0; i<lista.size(); i++){
               dataset.setValue(  new Integer (lista.get(i).getCantidad()),"",lista.get(i).getDescripcion());
               titulo=lista.get(i).getTitulo();
             }

            JFreeChart chart = ChartFactory.createBarChart("",  "", "", dataset, PlotOrientation.HORIZONTAL, false,  true, false);

           // Background del dibujo
	 chart.setBackgroundPaint(Color.white);

           try {

               ChartUtilities.saveChartAsJPEG(new File(ruta+".jpg"), chart, 550, 300);
             // ChartUtilities.saveChartAsJPEG(new File("D:/graficos/chartBCHorizontal.jpg"), chartH, 500, 300);

           } catch (IOException e) {

               System.err.println("Problem occurred creating chart.");

           }
        return ruta+".jpg";
       }



      public String BarChart3DVerticalA(List<Reporte> lista,String ruta) {

           // Create a simple Bar chart

           DefaultCategoryDataset dataset = new DefaultCategoryDataset();
           String titulo="";
           for (int i=0; i<lista.size(); i++){
               dataset.setValue(  new Integer (lista.get(i).getCantidad()),"",lista.get(i).getDescripcion());
               titulo=lista.get(i).getTitulo();
             }


	   // Profit1, Profit2 represent the row keys
           // Jane, Tom, Jill, etc. represent the column keys
           JFreeChart chart = ChartFactory.createBarChart3D( "", "", "", dataset, PlotOrientation.VERTICAL, true, true, false );

         //  JFreeChart chartH = ChartFactory.createBarChart3D( "Comparison between Salesman", "Salesman", "Value ($)", dataset, PlotOrientation.HORIZONTAL, true, true, false );
           try {

               ChartUtilities.saveChartAsJPEG(new File(ruta+".jpg"), chart, 550,   300);
          //     ChartUtilities.saveChartAsJPEG(new File("D:/graficos/chart3dHorizontal.jpg"), chartH, 500,   300);

           } catch (IOException e) {

               System.err.println("Problem occurred creating chart.");

           }
            return ruta+".jpg";
       }

       public String BarChart3DVerticalB(List<Reporte> lista,String ruta) {

           // Create a simple Bar chart

           DefaultCategoryDataset dataset = new DefaultCategoryDataset();
           String titulo="";
           for (int i=0; i<lista.size(); i++){
               dataset.setValue(  new Integer (lista.get(i).getCantidad()),lista.get(i).getDescripcion(),lista.get(i).getDescripcion());
               titulo=lista.get(i).getTitulo();
             }


	   // Profit1, Profit2 represent the row keys
           // Jane, Tom, Jill, etc. represent the column keys
           JFreeChart chart = ChartFactory.createBarChart3D( "", "", "", dataset, PlotOrientation.VERTICAL, true, true, false );

         //  JFreeChart chartH = ChartFactory.createBarChart3D( "Comparison between Salesman", "Salesman", "Value ($)", dataset, PlotOrientation.HORIZONTAL, true, true, false );
           try {

               ChartUtilities.saveChartAsJPEG(new File(ruta+".jpg"), chart, 550,   300);
          //     ChartUtilities.saveChartAsJPEG(new File("D:/graficos/chart3dHorizontal.jpg"), chartH, 500,   300);

           } catch (IOException e) {

               System.err.println("Problem occurred creating chart.");

           }
            return ruta+".jpg";
       }


           public String BarChart3DHorizontalA(List<Reporte> lista,String ruta) {

           // Create a simple Bar chart

           DefaultCategoryDataset dataset = new DefaultCategoryDataset();
           String titulo="";
           for (int i=0; i<lista.size(); i++){
               dataset.setValue(  new Integer (lista.get(i).getCantidad()),"",lista.get(i).getDescripcion());
               titulo=lista.get(i).getTitulo();
             }


	   // Profit1, Profit2 represent the row keys
           // Jane, Tom, Jill, etc. represent the column keys
           JFreeChart chart = ChartFactory.createBarChart3D( "", "", "", dataset, PlotOrientation.HORIZONTAL, true, true, false );

         //  JFreeChart chartH = ChartFactory.createBarChart3D( "Comparison between Salesman", "Salesman", "Value ($)", dataset, PlotOrientation.HORIZONTAL, true, true, false );
           try {

               ChartUtilities.saveChartAsJPEG(new File(ruta+".jpg"), chart, 550,   300);
          //     ChartUtilities.saveChartAsJPEG(new File("D:/graficos/chart3dHorizontal.jpg"), chartH, 500,   300);

           } catch (IOException e) {

               System.err.println("Problem occurred creating chart.");

           }
            return ruta+".jpg";
       }

       public String BarChart3DHorizontalB(List<Reporte> lista,String ruta) {

           // Create a simple Bar chart

           DefaultCategoryDataset dataset = new DefaultCategoryDataset();
           String titulo="";
           for (int i=0; i<lista.size(); i++){
               dataset.setValue(  new Integer (lista.get(i).getCantidad()),lista.get(i).getDescripcion(),lista.get(i).getDescripcion());
               titulo=lista.get(i).getTitulo();
             }


	   // Profit1, Profit2 represent the row keys
           // Jane, Tom, Jill, etc. represent the column keys
           JFreeChart chart = ChartFactory.createBarChart3D( "", "", "", dataset, PlotOrientation.HORIZONTAL, true, true, false );

         //  JFreeChart chartH = ChartFactory.createBarChart3D( "Comparison between Salesman", "Salesman", "Value ($)", dataset, PlotOrientation.HORIZONTAL, true, true, false );
           try {

               ChartUtilities.saveChartAsJPEG(new File(ruta+".jpg"), chart, 550,   300);
          //     ChartUtilities.saveChartAsJPEG(new File("D:/graficos/chart3dHorizontal.jpg"), chartH, 500,   300);

           } catch (IOException e) {

               System.err.println("Problem occurred creating chart.");

           }
            return ruta+".jpg";
       }
}
