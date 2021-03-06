/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package kkserver;

import acciones.Metodos;
import java.net.*;
import java.io.*;
 
public class KKMultiServer {
    public static void main(String[] args) throws IOException {
        
    /**    
    if (args.length != 1) {
        System.err.println("Usage: java KKMultiServer <port number>");
        System.exit(1);
    }
    */
        int portNumber = 8000;
        boolean listening = true;
        
        //Load a los usuarios
        Metodos.initListaUsuarios();
         
        try (ServerSocket serverSocket = new ServerSocket(portNumber)) { 
            while (listening) {
                new KKMultiServerThread(serverSocket.accept()).start();
            }
        } catch (IOException e) {
            System.err.println("Could not listen on port " + portNumber);
            System.exit(-1);
        }
    }
}