
public interface Stack<E> {

    /**
     * Reset this Stack.
     */
    public abstract void clear();

    /**
     * Insert an element at the top of the Stack.
     *
     * @param e The object to insert.
     */
    public abstract void push(E e);

    /**
     * @returns The element at the top of the Stack
     */
    public abstract E peek();

    /**
     * Remove from the Stack the element at the top.
     */
    public abstract void pop();

    /**
     * Is this Stack empty?
     */
    public abstract boolean isEmpty();

}
