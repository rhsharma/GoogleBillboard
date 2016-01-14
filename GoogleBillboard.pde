public final static String e = "2718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
     noLoop();  
     String digits = e.substring(0, 10);
	for (int i = 0; i<e.length(); i++) {
		digits = e.substring(i, i+10);
		double dnum = Double.parseDouble(digits);
		if (isPrime(dnum) == true) {
     		System.out.println(dnum);
			break;
		}
	}
}  
public void draw()  
{   
}  
public boolean isPrime(double dNum)  
{   
	if (dNum <= 0)
		return false;
	else if (dNum == 1)
		return false;
	else if (dNum == 2)
		return true;
	for (int i = 2; i <= Math.sqrt(dNum); i++) {
		if (dNum%i == 0)
			return false;
	}
    return true;  
} 