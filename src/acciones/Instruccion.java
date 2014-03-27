/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;


/**
 *
 * @author JojA
 */
public class Instruccion {
    /* 
     * 
     */
    public String result = "";
    public String result2 = "";
    public String tipoDato = "";
    public Instruccion producto;
    
    public void operar(){
        
    }
    
    public float stringToFloat(String inValor, String mensaje){
        float resultado = 0;
        try{resultado = Float.parseFloat(inValor);}
        catch(NumberFormatException e)
        {
            System.out.println("Error Opercion (semantico)." + mensaje);
            Metodos.addError("Semantico", -1, -1, mensaje);
        }
        return resultado;
    }
    
    public int stringToInt(String inValor, String mensaje){
        int resultado =0;
        try{
            String s = inValor;
            Float f = Float.parseFloat(s);
            int i = Math.round(f);
            resultado = i;
            }
        catch(NumberFormatException e)
            {
            System.out.println("Error Opercion (semantico)." + mensaje);
            Metodos.addError("Semantico", -1, -1, mensaje);
            }
        return resultado;
    }
    
    
}
