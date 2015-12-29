/**
 * An implementation of a queue with a single linked list.
 * 
 * @param <E>
 *            The type of elements.
 * 
 * @author Antonio Rodrigues n40853
 * @version
 */
public class SLLQueue<E> implements Queue<E>, Cloneable {

	// Private nested class
	private static class Node<E> {
		private E element;
		private Node<E> next;

		private Node(E element, Node<E> next) {
			this.element = element;
			this.next = next;
		}
	}
	
	/**
	 * The head of the list.
	 */
	private Node<E> head;
	/**
	 * The number of elements in this list.
	 */
	private int size;
	/**
	 * o no final da lista
	 */
	private Node<E> last;

	/**
	 * metodo ue verifica se a lista estah vazia, ou seja se o primeiro no o
	 * head estah a null
	 */
	public boolean isEmpty() {
		return head == null;
	}

	/**
	 * @see interface Queue<E> 
	 */
	public E front() {
		E primeiroElemento = null;
		if (!isEmpty()) {
			primeiroElemento = head.element;
		}
		return primeiroElemento;
	}
	/**
	 * @see interface Queue<E> 
	 */
	public void dequeue() {
		if (!isEmpty()) {
			head = head.next;
			size--;
			if (head == null) {
				last = null;
			}
		}
	}
	/**
	 * @see interface Queue<E> 
	 */
	public void enqueue(E element) {
		if (isEmpty()) {
			head = new Node<E>(element, null);
			last = head;
			size++;
		} else {
			Node<E> current = last;
			last = new Node<E>(element, null);
			current.next = last;
			size++;
		}
	}
	/**
	 * @see interface Queue<E> 
	 */
	public int size() {
		return size;
	}

	// clone, equals, toString

	/**
	 * Clone.
	 */
	@Override
	public SLLQueue<E> clone() {
		try {
			SLLQueue<E> result = (SLLQueue<E>) super.clone();
			result.head = copyNodes();
			return result;
		} catch (CloneNotSupportedException e) {
			throw new InternalError(e.toString());
		}
	}

	/**
	 * Clone the node structure.
	 */
	private Node<E> copyNodes() {
		Node<E> result = null;
		if (!isEmpty()) {
			result = new Node<E>(head.element, head.next);
			for (Node<E> p = result; p.next != null; p = p.next) {
				p.next = new Node<E>(p.next.element, p.next.next);
			}
		}
		return result;
	}

	/**
	 * Equals.
	 */
	@Override
	public boolean equals(Object other) {
		return this == other
				|| (other instanceof SLLQueue && equalQueues((SLLQueue<E>) other));
	}

	/**
	 * Is this queue equal to other queue?
	 */
	private boolean equalQueues(SLLQueue<E> other) {
		Node<E> p = this.head, q = other.head;
		while (p != null && q != null) {
			if (!equalReferences(p.element, q.element)) {
				return false;
			}
			p = p.next;
			q = q.next;
		}
		return p == null && q == null;
	}

	/**
	 * Are two (possiby null) references equal?
	 * 
	 * @param one
	 *            One reference
	 * @param other
	 *            The other reference
	 */
	private boolean equalReferences(E one, E other) {
		return one == null ? other == null : one.equals(other);
	}

	/**
	 * @return A textual representation of this queue with elements separated by
	 *         commas and inside [ and ].
	 */
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("[");
		Node<E> cur = head;
		while (cur != null) {
			sb.append(cur.element).append(", ");
			cur = cur.next;
		}
		sb.append("]");
		return sb.toString();
	}

}
