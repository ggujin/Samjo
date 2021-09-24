package kr.or.bit.dto;

public class Student {
	private int studentNum;
	private String bName;
	private String bClass;
	
	public int getStudentNum() {
		return studentNum;
	}
	public void setStudentNum(int studentNum) {
		this.studentNum = studentNum;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getbClass() {
		return bClass;
	}
	public void setbClass(String bClass) {
		this.bClass = bClass;
	}
	
	@Override
	public String toString() {
		return "Student [studentNum=" + studentNum + ", bName=" + bName + ", bClass=" + bClass + "]";
	}
	
	public Student() {
		super();
	}
	
	public Student(int studentNum, String bName, String bClass) {
		this.studentNum = studentNum;
		this.bName = bName;
		this.bClass = bClass;
	}	
}
