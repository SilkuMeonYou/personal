package index;

public class tabs_reviewInfoDTO {

	private String id;
	private String score;
	private String scoreValue;
	private String productName;
	private String productColor;
	private String productSize;
	private String reviewcontent;
	private String reviewphoto;
	private String boughtProduct;
	private boolean boughtProductcheck;
	
	public tabs_reviewInfoDTO() {}
	
	public String getId() { return id; }
	public void setId(String id) { this.id = id; }
	public String getScore() { return score; }
	public void setScore(String score) { this.score = score; }
	public String getScoreValue() { return scoreValue; }
	public void setScoreValue(String scoreValue) { this.scoreValue = scoreValue; }
	public String getProductColor() { return productColor; }
	public void setProductColor(String productColor) { this.productColor = productColor; }
	public String getProductSize() { return productSize; }
	public void setProductSize(String productSize) { this.productSize = productSize; }
	public String getReviewcontent() { return reviewcontent; }
	public void setReviewcontent(String reviewcontent) { this.reviewcontent = reviewcontent; }
	public String getReviewphoto() { return reviewphoto; }
	public void setReviewphoto(String reviewphoto) { this.reviewphoto = reviewphoto; }
	public String getBoughtProduct() { return boughtProduct; }
	public void setBoughtProduct(String boughtProduct) { this.boughtProduct = boughtProduct; }
	public boolean isBoughtProductcheck() { return boughtProductcheck; }
	public void setBoughtProductcheck(boolean boughtProductcheck) { this.boughtProductcheck = boughtProductcheck; }

	public String getProductName() { return productName; }
	public void setProductName(String productName) { this.productName = productName; }
	
	
	
}
