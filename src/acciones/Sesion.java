/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package acciones;

import java.util.ArrayList;

/**
 *
 * @author joja
 */
public class Sesion extends Instruccion{

    ArrayList<Campo> listaAtributos = new ArrayList<>();
    ArrayList<Campo> listaCampos = new ArrayList<>();
    
    public Sesion(ArrayList<Campo> inListaAtributos, ArrayList<Campo> inListaCampos){
        this.listaAtributos = inListaAtributos;
        this.listaCampos = inListaCampos;
    }
    
    @Override
    public void operar() {
        //super.operar(); //To change body of generated methods, choose Tools | Templates.
        Campo atributoId = getPrimerCamopoDe("id",listaAtributos);
        Campo atributoTipo = getPrimerCamopoDe("tipo",listaAtributos);
        Campo atributoPeticion = getPrimerCamopoDe("peticion",listaAtributos);
        Campo atributoDe = getPrimerCamopoDe("de", listaAtributos);
        Campo atributoFecha = getPrimerCamopoDe("fecha", listaAtributos);
        
        Campo campoUsuario = getPrimerCamopoDe("usuario",listaCampos);
        Campo campoNombres = getPrimerCamopoDe("nombres",listaCampos);
        Campo campoFecha = getPrimerCamopoDe("fecha",listaCampos);
        Campo campoClave = getPrimerCamopoDe("clave",listaCampos);
        
        
            
        if((atributoId!=null)&&(atributoTipo!=null)&&((listaAtributos.size()==2)))
        {//1-Registro ; 2-Login
            if((atributoId.valor.equalsIgnoreCase("correo"))&&(atributoTipo.valor.equalsIgnoreCase("registro")))
            {//Registro
                if((campoUsuario!=null)&&(campoNombres!=null)&&(campoFecha!=null)&&(campoClave!=null)&&((listaCampos.size()==4)))
                {//Revisando semantica.
                    Metodos.addUsuarioMem(campoUsuario.valor, campoNombres.valor, campoFecha.valor, campoClave.valor);
                }
            }
            else if((atributoId.valor.equalsIgnoreCase("correo"))&&(atributoTipo.valor.equalsIgnoreCase("inicio")))
            {//Login
                if((campoUsuario!=null)&&(campoClave!=null)&&((listaCampos.size()==2)))
                {//Revisando semantica.
                    //Metodo de Login
                }
            }
            
        }
    }
    
    public void makeRegistro(){
    
        
    
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
