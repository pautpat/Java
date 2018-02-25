import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class TestLinkedList {
	LinkedListInterface l;

	@Before
	public void setUp() throws Exception {
		l = new LinkedList2(3);
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testSucessfulInsert() {
		String data = "Prachi";
		l.insertElement(data);
		boolean present = l.isPresent(data);
		Assert.assertTrue(present);

	}

	@Test
	public void testListFull() {
		String data1 = "Prachi";
		String data2 = "Ashutosh";
		String data3 = "Sharv";
		String data4 = "Mom";
		l.insertElement(data1);
		l.insertElement(data2);
		l.insertElement(data3);
		Assert.assertFalse(l.insertElement(data4));

	}

	@Test
	public void testdeleteFirstElement() {
		String data = "Prachi";
		boolean present = l.insertElement(data);
		Assert.assertTrue(present);

		l.deleteElement(data);
		present = false;
		present = l.isPresent(data);
		Assert.assertFalse(present);
	}

	@Test
	public void testdeleteLastElement() {
		String data = "Prachi";
		boolean present = l.insertElement(data);
		Assert.assertTrue(present);
		String data2 = "Ashutosh";
		present = l.insertElement(data2);
		Assert.assertTrue(present);
		String data3 = "Sharv";
		present = l.insertElement(data3);
		Assert.assertTrue(present);
		boolean deleted = l.deleteElement(data3);
		Assert.assertTrue(deleted);
		present = false;
		present = l.isPresent(data3);
		Assert.assertFalse(present);
	}

	@Test
	public void testdeleteMiddleElement() {
		String data = "Prachi";
		boolean present = l.insertElement(data);
		Assert.assertTrue(present);
		String data2 = "Ashutosh";
		present = l.insertElement(data2);
		Assert.assertTrue(present);
		String data3 = "Sharv";
		present = l.insertElement(data3);
		Assert.assertTrue(present);
		boolean deleted = l.deleteElement(data2);
		Assert.assertTrue(deleted);

	//	present = false;
	//	present = l.isPresent(data2);
	//	Assert.assertFalse(present);

	}
	
	@Test
	public void testDeleteWhenListIsEmpty()
	{
		boolean deleted = l.deleteElement("Ashu");
		Assert.assertFalse(deleted);
	}

}
