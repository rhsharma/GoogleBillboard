import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class GoogleBillboard extends PApplet {

public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
     noLoop();  
     String digits = e.substring(0, 10);
     double dnum = Double.parseDouble(digits);
     System.out.println(dnum);
	for (int i = 0; i<e.length()+10; i++) {
		digits = e.substring(i, i+10);
		if (isPrime(dnum) == true)
			System.out.println(digits);
	}
}  
public void draw()  
{   
}  
public boolean isPrime(double dNum)  
{   
	if (dNum <= 0)
		return true;
	else if (dNum == 1)
		return true;
	else if (dNum == 2)
		return true;
	for (int i = 0; i <= Math.sqrt(dNum); i++) {
		if (dNum%2 == 0)
			return false;
	}
    return true;  
} 
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "GoogleBillboard" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
