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
public class Usuario extends Instruccion {

    ArrayList<Campo> listaCampos;
    
    public Usuario(ArrayList<Campo> inListaCampos){
        this.listaCampos = inListaCampos;
    }
    
    @Override
    public void operar() {
        
    }
    
    
    
}
