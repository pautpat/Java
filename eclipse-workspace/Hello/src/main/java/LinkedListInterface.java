
public interface LinkedListInterface {

	//time complexity is O(1)
	boolean insertElement(String data);

	// Best case O(1) and worst case O(n)
	boolean isPresent(String data);

	// Best case O(n), worst case O(n)
	boolean deleteElement(String data);

}