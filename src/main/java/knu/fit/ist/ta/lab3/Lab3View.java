/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package knu.fit.ist.ta.lab3;

import java.text.DecimalFormat;
import org.springframework.stereotype.Service;

/**
 *
 * @author 1
 */
@Service
public class Lab3View {
    
    DecimalFormat df = new DecimalFormat("###.##");
    
    
    
    public String showResult(String kString, String nString){
        if(kString.equals("")){return "Please enter k";}
        Float k = Float.parseFloat(kString);
        
        if(nString.equals("")){return "Please enter n";}
        Float n = Float.parseFloat(nString);
        
        if(1<1){return "";}
        else if(1<1){return "";}
        else {return df.format(Calculate.lab3equation(k,n));}
        
        /*return "";*/
            
    
    }
    
    
    
}
