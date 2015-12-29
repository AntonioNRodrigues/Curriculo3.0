/**
 * Queue represents a linear collection of elements that supports 
 * the insertion in the rear and removal from the front. 
 * 
 * @author antonialopes
 *
 * @param <E> The type of elements.
 */
public interface Queue<E> {
	/**
	 * @return If this queue is empty.
	 */
	boolean isEmpty();
	/**
	 * Add an element at the rear of this queue.
	 * @param element The element to add.
	 */
	void enqueue(E element);
	/**
	 * @return The element at the front of this queue.
	 * @requires !isEmpty()
	 */
	E front();
	/**
	 * Remove the element at the front of this queue.
	 * @requires !isEmpty()
	 */
	void dequeue();
	/**
	 * @return The number of elements in this queue.
	 */
	int size();
}
