
public class Person {

	String name;
	public Person(String name) {
		this.name = name;
	}
	public static void main(String[] args) {
		Person p1 = new Person("Prachi");
		Person p2 = new Person("Prachi");
		Person p3 = new Person(new String("Prachi"));
		
		System.out.println(p1==p2);
		System.out.println(p1.equals(p2));
		System.out.println(p1==p3);
		System.out.println(p1.equals(p3));



	}
	
	@Override
	public boolean equals(Object o) {
	if(o instanceof Person) {
		Person p2 = (Person)o;
		if(p2.name==name)
			return true;
		}
	return false;
		
	}

}
