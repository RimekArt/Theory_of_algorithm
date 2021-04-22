/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package knu.fit.ist.ta.lab2;

/**
 *
 * @author 1
 */
public class Calculate {
    
    
    public static float lab2equation(float x){
        
    float a = -7;
    float b = -10;
    float c = 8;
    float d = 10;
    
    return (float)Math.log(d*x)/(a*(float)Math.pow(x, 2)+b*x+c);
    }
    
}
