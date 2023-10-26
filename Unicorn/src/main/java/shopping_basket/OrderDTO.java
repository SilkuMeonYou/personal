package shopping_basket;

public class OrderDTO {
	private String checkedProductIndex;
	private String checkedAmount;
	private String checkedSize;
	private String checkedDelPrice;
	private String checkedPrice;
	private String totalPrice;
	public String getCheckedProductIndex() {
		return checkedProductIndex;
	}
	public void setCheckedProductIndex(String checkedProductIndex) {
		this.checkedProductIndex = checkedProductIndex;
	}
	public String getCheckedAmount() {
		return checkedAmount;
	}
	public void setCheckedAmount(String checkedAmount) {
		this.checkedAmount = checkedAmount;
	}
	public String getCheckedSize() {
		return checkedSize;
	}
	public void setCheckedSize(String checkedSize) {
		this.checkedSize = checkedSize;
	}
	public String getCheckedDelPrice() {
		return checkedDelPrice;
	}
	public void setCheckedDelPrice(String checkedDelPrice) {
		this.checkedDelPrice = checkedDelPrice;
	}
	public String getCheckedPrice() {
		return checkedPrice;
	}
	public void setCheckedPrice(String checedPrice) {
		this.checkedPrice = checedPrice;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
}
