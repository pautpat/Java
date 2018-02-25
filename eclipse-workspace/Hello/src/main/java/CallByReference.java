import java.util.ArrayList;
import java.util.List;

 // Objects in Jvaa are passed by Reference , also Array since array is an Object

public class CallByReference {
	
	public static void foof(List<String> str) {
		
	str.add("Blue");
	System.out.println("Values in foof "+ str);

	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		List<String> str = new ArrayList<String>();
		str.add("poop");
		foof(str);
		System.out.println("Values in main "+ str);

	}

}
