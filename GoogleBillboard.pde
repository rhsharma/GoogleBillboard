public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
     noLoop();  
     String digits = e.substring(0, 10);
     double dnum = Double.parseDouble(digits);
     System.out.println(dnum);
	for (int i = 0; i<e.length(); i++) {
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