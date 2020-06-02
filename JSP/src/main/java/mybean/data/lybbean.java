package mybean.data;

public class lybbean {
	String author;
	String theme="空";
	String content="空";
	String time;
	String backNews=" ";
	public void setAuthor(String author) {
		this.author=author;
	}
	public String getAuthor() {
		return author;
	}
	
	public void setTheme(String theme) {
		this.theme=theme;
	}
	public String getTheme() {
		return theme;
	}
	
	public void setContent(String content) {
		this.content=content;
	}
	public String getContent() {
		return content;
	}
	
	public void setTime(String time) {
		this.time=time;
	}
	public String getTime() {
		return time;
	}
	public void setBackNews(String backNews) {
		this.backNews=backNews;
	}
	public String getBackNews() {
		return backNews;
	}
	
}