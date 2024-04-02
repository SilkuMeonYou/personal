package com.human.java;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
   private int seq;
   private String title;
   private String writer;
   private String content;
   private Date regDate;
   private int cnt;
   
   // insertBoard.jsp 안에 파일 첨부를 위한 input 태그의 name과 동일한 변수명
   // 주의할점 
   // 1. form태그의 method="post"
   // 2. form태그의 enctype="multipart/form-data"가 들어가야함
   // 3. VO 변수명과 동일하게
   MultipartFile uploadFile;
   
   // DB에 넣기위한 VO안에서의 선언
   private String fileName;
   private long fileSize;
   
   private String fileNameEnc;



	public MultipartFile getUploadFile() {
	return uploadFile;
	}
	
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
		System.out.println("파일첨부 시작");
		System.out.println(uploadFile.toString());
		
		System.out.println("file is Empty : " + uploadFile.isEmpty());
	
		if (!uploadFile.isEmpty()) {
			// 첨부된 파일이 존재할 경우에만 실행
			// 1. 실제파일을 저장하는 행위 >> 시스템에 파일을 저장(webapp/resource)
			// 2. 실제파일에서 정보를 추출하는 행위 >> DB에 정보를 저장(파일이름, 파일크기 등..)
			
//			System.out.println(uploadFile.getOriginalFilename());
//			System.out.println(uploadFile.getSize());
			
			this.fileName = uploadFile.getOriginalFilename();
			this.fileSize = uploadFile.getSize();

			// 1. 실제파일을 저장하는 행위
//			File f = new File("저장하고싶은 경로 " + fileName);
			File f = new File("C:\\Users\\human\\Desktop\\stsProject\\FirstProject\\src\\main\\webapp\\resources\\upload\\"+fileName);
			
			// 실제 저장 키워드
			try {
				uploadFile.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		
	}
	
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	@Override
	public String toString() {
		return "BoardVO [seq=" + seq + ", title=" + title + ", writer=" + writer + ", content=" + content + ", regDate="
				+ regDate + ", cnt=" + cnt + "]";
	}
	
	
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public long getFileSize() {
		return fileSize;
	}
	
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	
	public String getFileNameEnc() {
	return fileNameEnc;
	}

	public void setFileNameEnc(String fileNameEnc) {
		this.fileNameEnc = fileNameEnc;
	}
   
}
