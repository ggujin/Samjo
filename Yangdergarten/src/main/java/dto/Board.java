package dto;

public class Board {
	private int index;
	private int boardId;
	private String createDate;
	private String updateDate;
	private String author;
	private String title;
	private String content;
	private int reference;
	private int depth;
	private int step;
	
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReference() {
		return reference;
	}
	public void setReference(int reference) {
		this.reference = reference;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	
	@Override
	public String toString() {
		return "Board [index=" + index + ", boardId=" + boardId + ", createDate=" + createDate + ", updateDate="
				+ updateDate + ", author=" + author + ", title=" + title + ", content=" + content + ", reference="
				+ reference + ", depth=" + depth + ", step=" + step + "]";
	}
	
	public Board() {
		super();
	}
	
	public Board(int index, int boardId, String createDate, String updateDate, String author, String title,
			String content, int reference, int depth, int step) {
		this.index = index;
		this.boardId = boardId;
		this.createDate = createDate;
		this.updateDate = updateDate;
		this.author = author;
		this.title = title;
		this.content = content;
		this.reference = reference;
		this.depth = depth;
		this.step = step;
	}
}
