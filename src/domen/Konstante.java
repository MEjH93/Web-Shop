package domen;

public enum Konstante {
	USER(1),ADMIN(0);
	private int id;

	private Konstante(int id) {
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	

}
