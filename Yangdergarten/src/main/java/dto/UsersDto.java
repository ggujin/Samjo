package dto;

public class UsersDto {

	private String id;
	private String pwd;
	private String phone;
	private int studentNum;
	private int cnum;
//	관리자계정 0, 비회원 1, 학부모 회원 2

	public UsersDto() {};

	public UsersDto(String id, String pwd, String phone, int studentNum, int cnum) {
		this.id = id;
		this.pwd = pwd;
		this.phone = phone;
		this.studentNum = studentNum;
		this.cnum = cnum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getStudentNum() {
		return studentNum;
	}

	public void setStudentNum(int studentNum) {
		this.studentNum = studentNum;
	}

	public int getCnum() {
		return cnum;
	}

	public void setCnum(int cnum) {
		this.cnum = cnum;
	}

	@Override
	public String toString() {
		return "UsersDto{" +
				"id='" + id + '\'' +
				", pwd='" + pwd + '\'' +
				", phone='" + phone + '\'' +
				", studentNum=" + studentNum +
				", cnum=" + cnum +
				'}';
	}
}
