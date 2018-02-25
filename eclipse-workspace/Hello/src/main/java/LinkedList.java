// Linked list implementation using Array
public class LinkedList implements LinkedListInterface {

	String[] str;
	int size = 0;
	int head = 0;
	int tail = -1;

	public LinkedList(int size) {
		this.size = size;
		str = new String[size];
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	//time complexity is O(1)
	/* (non-Javadoc)
	 * @see LinkedListInterface#insertElement(java.lang.String)
	 */
	@Override
	public boolean insertElement(String data) {
		// TODO Auto-generated method stub
		if (tail == -1) {
			str[head] = data;
			tail++;
			return true;
		} else if (tail < size - 1) {
			tail++;
			str[tail] = data;
			return true;
		} else {
			System.out.println("List is full");
			return false;
		}

	}

	// Best case O(1) and worst case O(n)
	/* (non-Javadoc)
	 * @see LinkedListInterface#isPresent(java.lang.String)
	 */
	@Override
	public boolean isPresent(String data) {
		// TODO Auto-generated method stub
		for (int i = 0; i <= tail; i++) {
			if (str[i] == data)
				return true;
		}
		return false;

	}

	// Best case O(n), worst case O(n)
	/* (non-Javadoc)
	 * @see LinkedListInterface#deleteElement(java.lang.String)
	 */
	@Override
	public boolean deleteElement(String data) {
		// Find the index of the element
		int foundIndex = -1;
		
		if(tail == -1)
			return false;
		
		for (int i = 0; i < size; i++) {
			if (str[i].equals(data)) {
				foundIndex = i;
				break;
			}

		}
		
		if(foundIndex == -1)
			return false;
		
		if (foundIndex != size - 1) {
			for (int j = foundIndex; j < tail; j++) {
				str[j] = str[j + 1];
			}
		}

			tail--;
			return true;
		}
		
		
	}

