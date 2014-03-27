/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package kkserver;

import java.net.*;
import java.io.*;
 
public class KKMultiServerThread extends Thread {
    private Socket socket = null;
 
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
                {
                    //la cadena vacia
                }
                else 
                {   //Si viene algo. Aqui se deberia de concatenar
                    if(inputLine.equals("#FINDEARCHIVO"))
                    {//Aqui deveria de ejecutar el mensaje actual.
                        
                    }
                    else
                    {
                        mensajeActual = mensajeActual + "\n" + inputLine;
                    }
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
