package QnA;

import java.time.LocalDate;

public class QnADTO {
	private String inquiryTitle="";
	private String inquiryWriter="";
	private String inquiryDate="";
	private String inquiryDetails="";
	private int inquiryNum = 0;
	
	public void setInquiryTitle(String inquiryTitle) {
		this.inquiryTitle = inquiryTitle;
	}

	public String getInquiryTitle() {
		return this.inquiryTitle;
	}

	public void setInquiryWriter(String inquiryWriter) {
		this.inquiryWriter = inquiryWriter;
	}

	public String getInquiryWriter() {
		return this.inquiryWriter;
	}

	public void setInquiryDate(String inquiryDate) {
		this.inquiryDate = inquiryDate;		
	}

	public String getInquiryDate() {

		return this.inquiryDate;
	}
	public void setInquiryDetails(String details) {
		this.inquiryDetails = details;
	}
	public String getInquiryDetails() {
		return this.inquiryDetails;
	}
	public void setInquiryNum(int num) {
		this.inquiryNum = num;
	}
	public int getInquiryNum(int num) {
		return this.inquiryNum;
	}
}
