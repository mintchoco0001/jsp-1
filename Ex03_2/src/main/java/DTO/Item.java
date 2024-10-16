package DTO;

public class Item {
	// 필드, 생성자, get/set, toString

	
	private String title;
	private int price;

	public Item() {}
	
	public Item(String title, int price) {
		super();
		this.title = title;
		this.price = price;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}


	@Override
	public String toString() {
		return "Item [title=" + title + ", price=" + price + "]";
	}

}
