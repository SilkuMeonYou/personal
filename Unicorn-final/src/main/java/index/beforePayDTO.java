package index;

public class beforePayDTO {

	private String imageUrl;
	private String productName;
	
	private int productPrice;
	private int salePrice;
	
//	-------------------------
	private int deleveryFee;
	private int amount;
	private String Size;
	
	beforePayDTO(){}
	


	public String getImageUrl() {
		return imageUrl;
	}



	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}



	public String getProductName() {
		return productName;
	}



	public void setProductName(String productName) {
		this.productName = productName;
	}


	public int getProductPrice() {
		return productPrice;
	}



	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}


	public int getSalePrice() {
		return salePrice;
	}



	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}



	public int getDeleveryFee() {
		return deleveryFee;
	}



	public void setDeleveryFee(int deleveryFee) {
		this.deleveryFee = deleveryFee;
	}



	public int getAmount() {
		return amount;
	}



	public void setAmount(int amount) {
		this.amount = amount;
	}

	
	public String getSize() {
		return Size;
	}



	public void setSize(String size) {
		Size = size;
	}





	

}
