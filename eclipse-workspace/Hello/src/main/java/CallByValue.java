
// Primitives data types are passed by value in Java

public class CallByValue {
	
	public static void foo(int i) {
		i++;
		System.out.println("i in foo "+ i);
		
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int i =2;
		foo(i);
		System.out.println("i in main "+ i);
		
	}

}
