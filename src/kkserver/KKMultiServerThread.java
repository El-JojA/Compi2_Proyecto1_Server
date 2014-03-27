/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package kkserver;

import analisis.ServidorALex;
import analisis.ServidorAParser;
import java.net.*;
import java.io.*;
 
public class KKMultiServerThread extends Thread {
    private Socket socket = null;
    String FINDEARCHIVO = "#FINDEARCHIVO";
 
    public KKMultiServerThread(Socket socket) {
        super("KKMultiServerThread");
        this.socket = socket;
    }
     
    public void run() {
 
        try (
            PrintWriter out = new PrintWriter(socket.getOutputStream(), true);
            BufferedReader in = new BufferedReader(
                new InputStreamReader(
                    socket.getInputStream()));
        ) {
            String inputLine=""; 
            String outputLine="";
            String mensajeActual="";
            KnockKnockProtocol kkp = new KnockKnockProtocol();
            
            while ((inputLine = in.readLine()) != null) {
                //outputLine = kkp.processInput(inputLine);
                if(inputLine.length()>2)
                {   //Si viene algo. Aqui se deberia de concatenar
                    if(inputLine.equals(FINDEARCHIVO))
                    {//Aqui deveria de ejecutar el mensaje actual.
                        System.out.println(mensajeActual);
                        outputLine = mensajeActual;
                        try
                        {
                        ServidorALex srvALex = new ServidorALex(new StringReader(outputLine));
                        ServidorAParser srvAParser = new ServidorAParser(srvALex);
                        srvAParser.parse();
                        }catch (Exception ex){System.out.println(ex.toString());}
                        
                        //Aquí abajo mandamos la respuesa.
                        out.println(outputLine);
                    }
                    else
                    {
                        mensajeActual = mensajeActual + "\n" + inputLine;
                    }
                }
                else 
                {   //la cadena vacia
                    //Se inicia a leer un nuevo mensaje.
                    mensajeActual = "";
                }
                
                
                if (outputLine.equals("Bye."))
                    break;
            }
            socket.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
