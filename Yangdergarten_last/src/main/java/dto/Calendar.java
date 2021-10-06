package dto;

public class Calendar {
	private int id;
	private String title;
	private String startDate;
	private String endDate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}


	@Override
	public String toString() {
		return "Calendar{" +
				"id=" + id +
				", title='" + title + '\'' +
				", startDate='" + startDate + '\'' +
				", endDate='" + endDate + '\'' +
				'}';
	}

	public Calendar(int id, String title, String startDate, String endDate) {
		this.id = id;
		this.title = title;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	public Calendar() {}


}
