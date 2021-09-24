package kr.or.bit.dto;

public class Reply {
	private int no;
	private String author;
	private String createDate;
	private int index;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	
	@Override
	public String toString() {
		return "Reply [no=" + no + ", author=" + author + ", createDate=" + createDate + ", index=" + index + "]";
	}
	
	public Reply() {
		super();
	}
	
	public Reply(int no, String author, String createDate, int index) {
		super();
		this.no = no;
		this.author = author;
		this.createDate = createDate;
		this.index = index;
	}
}
