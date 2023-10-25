package productList;

public class ProductInfo {
   private String imageUrl;
   private String imageSub1;
   private String imageSub2;
   private String productName;
   private String productPrice;
   private int popularity;
   private int productNum;
   private String imagedetail;
   private int salePrice;
   // 상세정보표

   private String productcompany;
   private String productmadeday;
   private String productnumber;
   private String productmadein;
   private String productbrand;
   private String productuserage;

   public ProductInfo() {
      // 생성자
   }

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

   public String getProductPrice() {
      return productPrice;
   }

   public void setProductPrice(String productPrice) {
      this.productPrice = productPrice;
   }

   public int getPopularity() {
      return popularity;
   }

   public void setPopularity(int popularity) {
      this.popularity = popularity;
   }

   public int getProductNum() {
      return productNum;
   }

   public void setProductNum(int productNum) {
      this.productNum = productNum;
   }

   @Override
   public String toString() {
      return "ProductInfo [imageUrl=" + imageUrl + ", productName=" + productName + ", productPrice=" + productPrice
            + ", popularity=" + popularity + ", productNum=" + productNum + "]";
   }

   public String getImageSub1() {
      return imageSub1;
   }

   public void setImageSub1(String imageSub1) {
      this.imageSub1 = imageSub1;
   }

   public String getImageSub2() {
      return imageSub2;
   }

   public void setImageSub2(String imageSub2) {
      this.imageSub2 = imageSub2;
   }

   public String getimagedetail() {
      return imagedetail;
   }

   public void setimagedetail(String imagedetail) {
      this.imagedetail = imagedetail;
   }

   public String getproductcompany() {
      return productcompany;
   }

   public void setproductcompany(String productcompany) {
      this.productcompany = productcompany;
   }

   public String getproductmadeday() {
      return productmadeday;
   }

   public void setproductmadeday(String productmadeday) {
      this.productmadeday = productmadeday;
   }

   public String getproductnumber() {
      return productnumber;
   }

   public void setproductnumber(String productnumber) {
      this.productnumber = productnumber;
   }

   public String getproductmadein() {
      return productmadein;
   }

   public void setproductmadein (String productmadein) {
      this.productmadein = productmadein;
   }

   public String getproductbrand() {
      return productbrand;
   }

   public void setproductbrand(String productbrand) {
      this.productbrand = productbrand;
   }
   
   public String getproductuserage() {
      return productuserage;
   }

   public void setproductuserage(String productuserage) {
      this.productuserage = productuserage;
   }

public int getSalePrice() {
	return salePrice;
}

public void setSalePrice(int string) {
	this.salePrice = string;
}

}