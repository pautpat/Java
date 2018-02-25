// Methods can be overridden only in Subclass
public class PolymorphismExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Animal A = new Animal();
		A.talk();
		
		Dog d = new Dog();
		d.talk();
		
		// Which class method being called depends on the new instance of which class is being called
		// Here every animal is dog since dog extends Animal, but saying Dog d = new Animal() ois not correct 
		// since every Animal is not Dog
		// So  Superclass var = new Subclass() is allowed
		Animal B = new Dog();
		B.talk();
		
		// Since all superclass methods are inherited into subclass, if any method is calles on the instance of sub
		//class, but not defined in subclass, then inherited method is called
		Animal C = new Dog();
		C.walk();
		
		
		Dog f = (Dog) B;
		f.talk();
		
		// Below code will throw ClassCastexception. This is a runtime exception
		// Since you cannot cast Superclass by Subclass (subclass) new Superclass is not allowed
		Dog e = (Dog) new Animal();
		e.talk();
		
		

	}

}
// This class cannot be public since only one class is public in file in Java
class Animal {
	 
	public void talk() {
		 System.out.println("Animal talk is callled");
		 
	 }
	
	public void walk() {
		 System.out.println("Animal walk is callled");

		
	}
	
}

class Dog extends Animal{
	public void talk() {
		 System.out.println("Dog Barks");
		 
	 }
	
}