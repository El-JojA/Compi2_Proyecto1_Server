/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package acciones;


/**
 *
 * @author joja
 */
public class Campo extends Instruccion{
    
    String tipo = "";
    String valor = "";
    
    public Campo(String inTipo, String inValor){
        this.tipo = inTipo;
        this.valor = inValor;
    }
    
    public Campo(){
    
        
        
    }
    
    @Override
    public void operar() {
        //super.operar(); //To change body of generated methods, choose Tools | Templates.
    }
    
}
