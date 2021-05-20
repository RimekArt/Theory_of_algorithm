/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package knu.fit.ist.ta.lab3;

import static java.lang.Math.pow;

/**
 *
 * @author 1
 */
public class Calculate {
    
    public static float lab3equation(float k, float n){
        
        float sum = 0;
        while(k<n+1)
        {
            sum = sum + (k*k);
            k++;
        }

        
    return sum;
    }
    
}
