package jBoard;

public class jBoardDTO {

	int no;
	String id;
	String writer;
	String title;
	String content;

	public jBoardDTO(int no, String id, String writer, String title, String content) {
		this.no = no;
		this.id = id;
		this.writer = writer;
		this.title = title;
		this.content = content;

	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
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

	@Override
	public String toString() {
		return "jBoardDTO [no=" + no + ", id=" + id + ", writer=" + writer + ", title=" + title + ", content=" + content
				+ "\n";
	}

}
