package mybean.data;


public class loginbean{
	String logname="default";
	String backNews="δ��¼";
	String radio;
	String telphone;
	String email;
	String realname;
	String [][]lyb=new String[11][4];//�������
	String []question=new String [8];//�����ʦ���������⣬������ʾ����ҳ
	String []quesTime=new String [8];//�����ʦ���������ʱ�䣬������ʾ����ҳ
	String []quesPublish=new String [4];//�����ʦ����������ʹ𰸣�����ѧ���鿴
	public void setLogname(String logname) {
		this.logname=logname;
	}
	public String getLogname() {
		return logname;
	}
	public void setBackNews(String backNews) {
		this.backNews=backNews;
	}
	public String getBackNews() {
		return backNews;
	}
	public void setRadio(String radio) {
		this.radio=radio;
	}
	public String getRadio() {
		return radio;
	}
	public void setRealname(String realname) {
		this.realname=realname;
	}
	public String getRealname() {
		return realname;
	}
	public void setLyb(String lyb,int i,int j) {
		this.lyb[i][j]=lyb;
	}
	public String getLyb(int i,int j) {
		return lyb[i][j];
	}
	public void setTelphone(String telphone) {
		this.telphone=telphone;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setEmail(String email) {
		this.email=email;
	}
	public String getEmail() {
		return email;
	}
	public void setQuestion(String question,int i) {
		this.question[i]=question;
	}
	public String getQuestion(int i) {
		return question[i];
	}
	public void setQuesTime(String quesTime,int i) {
		this.quesTime[i]=quesTime;
	}
	public String getQuesTime(int i) {
		return quesTime[i];
	}
	public void setQuesPublish(String quespublish,int i) {
		this.quesPublish[i]=quespublish;
	}
	public String getQuesPublish(int i) {
		return quesPublish[i];
	}
}