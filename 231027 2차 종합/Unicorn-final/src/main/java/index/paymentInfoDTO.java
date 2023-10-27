package index;

public class paymentInfoDTO {

   private String paymentInfo_id;
   private String paymentInfo_rname;
   private String paymentInfo_address;
   private String paymentInfo_detailaddress;
   
   private String paymentInfo_pnumber;
   private String paymentInfo_email;
   private String paymentInfo_message;
   
   paymentInfoDTO(){}

public String getPaymentInfo_id() { return paymentInfo_id; }

public void setPaymentInfo_id(String paymentInfo_id) { this.paymentInfo_id = paymentInfo_id; }

public String getPaymentInfo_rname() { return paymentInfo_rname; }

public void setPaymentInfo_rname(String paymentInfo_rname) { this.paymentInfo_rname = paymentInfo_rname; }

public String getPaymentInfo_address() { return paymentInfo_address; }

public void setPaymentInfo_address(String paymentInfo_address) { this.paymentInfo_address = paymentInfo_address; }

public String getPaymentInfo_pnumber() { return paymentInfo_pnumber; }

public void setPaymentInfo_pnumber(String paymentInfo_pnumber) { this.paymentInfo_pnumber = paymentInfo_pnumber; }

public String getPaymentInfo_email() { return paymentInfo_email; }

public void setPaymentInfo_email(String paymentInfo_email) { this.paymentInfo_email = paymentInfo_email; }

public String getPaymentInfo_message() { return paymentInfo_message; }

public void setPaymentInfo_message(String paymentInfo_message) { this.paymentInfo_message = paymentInfo_message; }

public String getPaymentInfo_detailaddress() { return paymentInfo_detailaddress; }

public void setPaymentInfo_detailaddress(String paymentInfo_detailaddress) { this.paymentInfo_detailaddress = paymentInfo_detailaddress; }

@Override
public String toString() {
	return "paymentInfoDTO [paymentInfo_id=" + paymentInfo_id + ", paymentInfo_rname=" + paymentInfo_rname + ", paymentInfo_address=" + paymentInfo_address + ", paymentInfo_pnumber=" + paymentInfo_pnumber
			+ ", paymentInfo_email=" + paymentInfo_email + ", paymentInfo_message=" + paymentInfo_message + "]";
}




	

	
	
}
