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

    ArrayList<Campo> listaAtributos;
    ArrayList<Campo> listaCampos;
    
    public Sesion(ArrayList<Campo> inListaAtributos, ArrayList<Campo> inListaCampos){
        this.listaAtributos = inListaAtributos;
        this.listaCampos = inListaCampos;
    }
    
    @Override
    public void operar() {
        //super.operar(); //To change body of generated methods, choose Tools | Templates.
        if(listaAtributos.size()==2)
        {
            Campo atributoId = getPrimerCamopoDe("id");
            Campo atributoTipo = getPrimerCamopoDe("tipo");
            if((atributoId.valor.equalsIgnoreCase("correo"))&&(atributoTipo.valor.equalsIgnoreCase("registro")))
            {//------Aqui ejecuto si lo que se necesita es hacer un registro.
                
                
            }
        }
    }
    
    public void makeRegistro(){
    
        
    
    }
    
    public Campo getPrimerCamopoDe(String inNombreCampo){
        /**
         * Va a devolver el primer campo que encuentre en la lista de atributos,
         * esto quiere decir que si hay varios con el mismo nombre solo va a tomar
         * en cuenta el primero.
         */
        for(int i =0; i < this.listaAtributos.size(); i++)
        {
            if(this.listaAtributos.get(i).tipo.equalsIgnoreCase(inNombreCampo))
            {
                return this.listaAtributos.get(i);
            }
        }
        return null;
    }
    
}
