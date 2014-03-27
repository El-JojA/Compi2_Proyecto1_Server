/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package tests;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author joja
 */
public class testx {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        test1();
    }
    
    public static void test1(){
    
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy,hh:mm:ss");
	String fechaHora = sdf.format(new Date()); 
	System.out.println(fechaHora);
    
    }
    
}
