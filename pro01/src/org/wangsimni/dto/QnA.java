package org.wangsimni.dto;

public class QnA {
	private int no;
	private String plevel;
	private String pamo;
	private String title;
	private String content;
	private String resdate;
	private int visited;
	private String qid;
	
	public QnA() {
		
	}
	
	public QnA(int no, String plevel, String pamo, String title, String content, String resdate, int visited,
			String qid) {
		super();
		this.no = no;
		this.plevel = plevel;
		this.pamo = pamo;
		this.title = title;
		this.content = content;
		this.resdate = resdate;
		this.visited = visited;
		this.qid = qid;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getPlevel() {
		return plevel;
	}
	public void setPlevel(String plevel) {
		this.plevel = plevel;
	}
	public String getPamo() {
		return pamo;
	}
	public void setPamo(String pamo) {
		this.pamo = pamo;
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
	public String getResdate() {
		return resdate;
	}
	public void setRedate(String resdate) {
		this.resdate = resdate;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	public String getAid() {
		return qid;
	}
	public void setAid(String aid) {
		this.qid = qid;
	}
	
	@Override
	public String toString() {
		return "QnA [no=" + no + ", plevel=" + plevel + ", pamo=" + pamo + ", title=" + title + ", content=" + content
				+ ", resdate=" + resdate + ", visited=" + visited + ", qid=" + qid + "]";
	}
	
}
