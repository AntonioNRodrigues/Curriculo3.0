public class PrinterTask {
	/**
	 * Tipo PrinterTask (projecto Printer)
	 * @author respicio
	 */

	
	// the name
	private String name;
	// the size
	private int size;
	// the user
	private String user;

	// constructor
	public PrinterTask( String name, int size, String user ) {
		this.name = name;
		this.size = size;
		this.user = user;
	}
	
	/**
	 * @return the name of this PrinterTask
	 */
	public String name() {
		return name;
	}
	
	/**
	 * @return the size of this PrinterTask
	 */
	public int size() {
		return size;
	}
	
	/**
	 * @return the user of this PrinterTask
	 */
    public String user() {
		return user;
	}
	/**
	 * @return A textual representation of this PrinterTask
	 */
    @Override
    public String toString() {
        return name + ":" + size + ":" + user;
    }

}
