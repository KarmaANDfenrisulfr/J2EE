package mybean.data;

public class showquestion{
	String question;
	String answer;
	String sname;
	String tname;
	String time;
	String [][]ques=new String[4][5];
	public void setQuestion(String question) {
		this.question=question;
	}
	public String getQuestion() {
		return question;
	}
	public void setAnswer(String answer) {
		this.answer=answer;
	}
	public String getAnswer() {
		return answer;
	}
	public void setSname(String sname) {
		this.sname=sname;
	}
	public String getSname() {
		return sname;
	}
	public void setTname(String tname) {
		this.tname=tname;
	}
	public String getTname() {
		return tname;
	}
	public void setTime(String time) {
		this.time=time;
	}
	public String getTime() {
		return time;
	}
	public void setQues(String lyb,int i,int j) {
		this.ques[i][j]=lyb;
	}
	public String getQues(int i,int j) {
		return ques[i][j];
	}
}