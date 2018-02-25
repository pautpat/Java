
public class LinkedList2 implements LinkedListInterface {

	int size;
	Node head = null;
	Node tail = null;
	int currentSize = 0;

	public LinkedList2(int size) {
		this.size = size;
	}

	@Override
	public boolean insertElement(String data) {
		// TODO Auto-generated method stub
		if (currentSize == size) {
			return false;
		}
		Node node = new Node(data);
		if (head == null) {
			head = node;

		} else {
			tail.nextNode = node;

		}
		tail = node;
		currentSize++;
		return true;

	}

	@Override
	public boolean isPresent(String data) {
		Node traverse = head;
		while (traverse != null) {
			if (traverse.getData().equals(data)) {
				return true;
			}
			traverse = traverse.getNextNode();

		}
		return false;

	}

	@Override
	public boolean deleteElement(String data) {
		if (head == null)
			return false;
		if (currentSize == 1 && head.getData().equals(data)) {
			head = null;
			tail = null;
			return true;
		}

		Node traverse = head;
		Node prevTraverse = null;
		while (traverse != null) {
			if (traverse.getData().equals(data)) {
				break;
			} else {
				prevTraverse = traverse;
				traverse = traverse.getNextNode();
			}
		}
		if (traverse == null)
			return false;

		if (traverse.getNextNode() == null) {
			tail = prevTraverse;
		}
		prevTraverse.nextNode = traverse.nextNode;
		return true;
	}

	class Node {
		String data;

		Node nextNode;

		public Node(String data2) {
			this.data = data2;
			nextNode = null;
		}

		public Node getNextNode() {
			// TODO Auto-generated method stub
			return nextNode;
		}

		String getData() {
			return data;
		}

	}

}
