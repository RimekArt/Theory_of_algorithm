package knu.fit.ist.ta;

import knu.fit.ist.ta.exam.Calculate;
import knu.fit.ist.ta.exam.Results;
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class TaApplicationTests {

    @Test
    void contextLoads() {
    }
        
    @Test
    void testFormula()
    {
        assertEquals(3.5, Calculate.Calculator(1));
    }
    
   
    

        
       
}
