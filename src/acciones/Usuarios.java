/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package acciones;

import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author joja
 */
public class Usuarios extends Instruccion {
    
    ArrayList<Usuario> listaUsuarios = new ArrayList<>();
    
    public Usuarios(ArrayList<Usuario> inListaUsuarios){
        this.listaUsuarios = inListaUsuarios;
    }

    @Override
    public void operar() {
        String usuario;
        String nombres;
        String fecha;
        String clave;
        ArrayList<UsuarioMem> listaUsuMem = new ArrayList<>();
       
       for(int i = 0; i < this.listaUsuarios.size(); i++)
        {
            if(this.listaUsuarios.get(i).listaCampos.size()==4)
            {
                Campo campoUsuario = getPrimerCamopoDe("usuario", this.listaUsuarios.get(i).listaCampos);
                Campo campoNombres = getPrimerCamopoDe("nombres", this.listaUsuarios.get(i).listaCampos);
                Campo campoFecha = getPrimerCamopoDe("fecha", this.listaUsuarios.get(i).listaCampos);
                Campo campoClave = getPrimerCamopoDe("clave", this.listaUsuarios.get(i).listaCampos);
                
                if(campoUsuario==null || campoNombres ==null || campoFecha == null || campoClave ==null)
                {
                    Random rand = new Random();
                    int  x = rand.nextInt(30) + 1;
                    int  y = rand.nextInt(20) + 1;
                    Metodos.addError("semantico", y, x, "Se encontró un error en los campos que contiene \"<usuario>\"");
                }
                else
                {
                    usuario = campoUsuario.valor;
                    nombres = campoNombres.valor;
                    fecha = campoFecha.valor;
                    clave = campoClave.valor;
                    
                    
                    UsuarioMem usu = new UsuarioMem(usuario, nombres, fecha, clave);
                    listaUsuMem.add(usu);
                }
                
                
                
             }
            else
            {   
                Random rand = new Random();
                int  x = rand.nextInt(30) + 1;
                int  y = rand.nextInt(20) + 1;
                Metodos.addError("semantico", y, x, "Se encontró un error en los campos que contiene \"<usuario>\"");
                return;
            }
        }
       //Borro la lista cada vez que leeo del archivo de los usuarios para no duplicarlos :)
       Metodos.listaUsuariosMem.clear();
       Metodos.listaUsuariosMem = listaUsuMem;
        
    }
    
    public Campo getPrimerCamopoDe(String inNombreCampo,  ArrayList<Campo> inListaCampos){
        /**
         * Va a devolver el primer campo que encuentre en la lista de atributos,
         * esto quiere decir que si hay varios con el mismo nombre solo va a tomar
         * en cuenta el primero.
         */
        for(int i =0; i < inListaCampos.size(); i++)
        {
            if(inListaCampos.get(i).tipo.equalsIgnoreCase(inNombreCampo))
            {
                return inListaCampos.get(i);
            }
        }
        return null;
    }
    
}
