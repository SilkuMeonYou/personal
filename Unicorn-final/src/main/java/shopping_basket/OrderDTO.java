package shopping_basket;

public class OrderDTO {
	private String checkedImageUrl;
	private String checkedName;
	private int checkedDiscountPrice;
	private int checkedProductPrice;

	private String checkedSize;
	private int checkedAmount;
	
	private int totalCheckedPrice;
	private int totalPrice;
	private int totalDeliveryPrice;
	
	public String getCheckedImageUrl() {
		return checkedImageUrl;
	}
	public void setCheckedImageUrl(String checkedImageUrl) {
		this.checkedImageUrl = checkedImageUrl;
	}
	public String getCheckedName() {
		return checkedName;
	}
	public void setCheckedName(String checkedName) {
		this.checkedName = checkedName;
	}
	public int getCheckedDiscountPrice() {
		return checkedDiscountPrice;
	}
	public void setCheckedDiscountPrice(int checkedDiscountPrice) {
		this.checkedDiscountPrice = checkedDiscountPrice;
	}
	public int getCheckedProductPrice() {
		return checkedProductPrice;
	}
	public void setCheckedProductPrice(int checkedProductPrice) {
		this.checkedProductPrice = checkedProductPrice;
	}
	public String getCheckedSize() {
		return checkedSize;
	}
	public void setCheckedSize(String checkedSize) {
		this.checkedSize = checkedSize;
	}
	public int getCheckedAmount() {
		return checkedAmount;
	}
	public void setCheckedAmount(int checkedAmount) {
		this.checkedAmount = checkedAmount;
	}
	public int getTotalCheckedPrice() {
		return totalCheckedPrice;
	}
	public void setTotalCheckedPrice(int totalCheckedPrice) {
		this.totalCheckedPrice = totalCheckedPrice;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getTotalDeliveryPrice() {
		return totalDeliveryPrice;
	}
	public void setTotalDeliveryPrice(int totalDeliveryPrice) {
		this.totalDeliveryPrice = totalDeliveryPrice;
	}
	
	
	
}
