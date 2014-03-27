/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import analisis.*;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.StringReader;
import java.util.List;
import java.util.ArrayList;

/**
 *
 * @author JojA
 */
public class Metodos {
    
    public static String htmlErrorLex="";
    public static String htmlErrorSin="";
    public static String htmlErrorSem="";
    public static String consolaString = "Consolation 2000 pr0. \n"
                                         +"---------------------- \n \n";
    
    public static ArrayList<UsuarioMem> listaUsuariosMem = new ArrayList<>();
    public static String pathUsuariosXML ="C:\\Users\\joja\\Documents\\NetBeansProjects\\Compi2_Poryecto1_Server\\UsuariosServidorA.xml";
    
    public static void Metodos(){
        
    }
    
    public static String leerArchivo(String inNombreArchivo) throws FileNotFoundException, IOException{
        String resultado = null;
        try(BufferedReader br = new BufferedReader(new FileReader(inNombreArchivo))) {
        StringBuilder sb = new StringBuilder();
        String line = br.readLine();

        while (line != null) {
            sb.append(line);
            sb.append(System.lineSeparator());
            line = br.readLine();
        }
        resultado = sb.toString();
    }
        return resultado;
    }
    
    public static void clearAll(){
        htmlErrorLex="";
        htmlErrorSin="";
        htmlErrorSem="";
        consolaString = "Consolation 2000 pr0. \n"
                        +"---------------------- \n \n";
    }
    
    public static void initListaUsuarios() throws IOException{
    
        String usuarios = leerArchivo(pathUsuariosXML); 
        compilarServidor(usuarios);
         
    }
    
    public static void compilarServidor(String inArchivo){
        try
                {
                ServidorALex srvALex = new ServidorALex(new StringReader(inArchivo));
                ServidorAParser srvAParser = new ServidorAParser(srvALex);
                srvAParser.parse();
                }catch (Exception ex){System.out.println(ex.toString());}
    }
    
    public static void addError(String inTipo, int fila, int columna, String inMensaje  ){
        switch (inTipo)
        {
            case "lexico":
                htmlErrorLex = htmlErrorLex + 
                    "\n <tr>" +
                    "\n <td>"+ inTipo +"</td>" +
                    "\n <td>"+ fila +"</td>" +
                    "\n <td>"+ columna +"</td>" +
                    "\n <td>"+ inMensaje +"</td>" +
                    "\n </tr>" +
                    "\n ";
                break;
                
            case "sintactico":
                htmlErrorSin = htmlErrorSin + 
                    "\n <tr>" +
                    "\n <td>"+ inTipo +"</td>" +
                    "\n <td>"+ fila +"</td>" +
                    "\n <td>"+ columna +"</td>" +
                    "\n <td>"+ inMensaje +"</td>" +
                    "\n </tr>" +
                    "\n ";
                break;
            case "semantico":
                htmlErrorSem = htmlErrorSem + 
                    "\n <tr>" +
                    "\n <td>"+ inTipo +"</td>" +
                    "\n <td>"+ fila +"</td>" +
                    "\n <td>"+ columna +"</td>" +
                    "\n <td>"+ inMensaje +"</td>" +
                    "\n </tr>" +
                    "\n ";
                break;
        }
    }
    
    public static String crearErrores(){
            String html="\n <html>" + 
                    "\n <body bgcolor=\"#BFFF00\"> "+
                    "\n <center>" +
                    "\n <h1>Errores Léxicos</h1>" +
                    "\n"+
                    "\n <table border=\"1\">" +
                    "\n <tr>" +
                    "\n <td><b>Tipo</b></td>" +
                    "\n <td><b>Fila</b></td>" +
                    "\n <td><b>Columna</b></td>" +
                    "\n <td><b>Mensaje</b></td>" +
                    "\n </tr>" +
                    "\n " +
                    htmlErrorLex+
                    "\n </table>" +
                    "\n </center>";
            
                    html= html+ 
                    "\n <center>" +
                    "\n <h1>Errores Sintacticos</h1>" +
                    "\n"+
                    "\n <table border=\"1\">" +
                    "\n <tr>" +
                    "\n <td><b>Tipo</b></td>" +
                    "\n <td><b>Fila</b></td>" +
                    "\n <td><b>Columna</b></td>" +
                    "\n <td><b>Mensaje</b></td>" +
                    "\n </tr>" +
                    "\n "+
                    htmlErrorSin+
                    "\n </table>" +
                    "\n </center>";
                            
                    html= html+ 
                    "\n <center>" +
                    "\n <h1>Errores Semánticos</h1>" +
                    "\n"+
                    "\n <table border=\"1\">" +
                    "\n <tr>" +
                    "\n <td><b>Tipo</b></td>" +
                    "\n <td><b>Fila</b></td>" +
                    "\n <td><b>Columna</b></td>" +
                    "\n <td><b>Mensaje</b></td>" +
                    "\n </tr>" +
                    "\n "+
                    htmlErrorSem+
                    "\n </table>" +
                    "\n </center>"+
                    "\n </body>"+
                    "\n </html>";
            
            return html;
        }
    
}
