/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package knu.fit.ist.ta.exam;

import java.util.LinkedList;
import java.util.List;
import java.util.Random;

/**
 *
 * @author 1
 */
public class Results {
    public List<Float> args;
    public static List<Float> results;
    
    public Results(){
        args = new LinkedList<Float>();
        results = new LinkedList<Float>();
    }
    
    public Results(int length)
    {
        args = new LinkedList<Float>();
        results = new LinkedList<Float>();
        Random random = new Random();
        
        for (int i = 0; i < length; i++)
            args.add((float)random.nextInt(100));
    }
    
    public void SetArgs(float[] args)
    {
        this.args.clear();
        for (int i = 0; i < args.length; i++)
            this.args.add(args[i]);
    }
    
    public String Calculate()
    {
        results.clear();
        int length = args.size();

        for (int i = 0; i < length; i++)
            results.add(Calculate.Calculator(args.get(i)));
        
        return results.toString();
    }
    
    public String GetArgs()
    {
        return args.toString();
    }
    
    public static int SearchResult(double value)
    {
        int length = results.size();
        for (int i = 0; i < length; i++)
            if(results.get(i) == value)
                return i + 1;
        
        return -1;
    }
}
