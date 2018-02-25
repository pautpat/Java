
public class PolymorphismExample2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Animal2 A = new Animal2();
		A.talk();
		
		Dog2 d = new Dog2();
		d.talk();
		
		Dog2 A2 = new Dog2();
		A2.talk();
		A2.walk();
		
		// If the method is static then the type of the left side is considered, and if it
		// is not Static then the type of the right is considered
		Animal2 A3 = A2;
		A3.walk();
		A3.talk();
		
		
		
		

	}

}
// This class cannot be public since only one class is public in file in Java
class Animal2 {
	 
	public static void talk() {
		 System.out.println("Animal talk is callled");
		 
	 }
	
	public static void walk() {
		 System.out.println("Animal walk is callled");

		
	}
	
}

class Dog2 extends Animal2{
	public static void talk() {
		 System.out.println("Dog Barks");
		 
	 }
	
}