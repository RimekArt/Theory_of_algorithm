package knu.fit.ist.ta;

import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ArtemRimekApplicationTests {

	@Test
	void contextLoads() {
	}
        
        @Test
	void test1() {
            
            assertEquals(0.02f,0.025f,0.001f);
	}

}
