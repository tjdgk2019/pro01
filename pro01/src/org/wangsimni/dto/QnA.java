package org.wangsimni.dto;

public class QnA {
	private int no;
	private int plevel;
	private int parno;
	private String title;
	private String content;
	private String resdate;
	private int visited;
	private String qid;
	
	public QnA() {
		
	}

	public QnA(int no, int plevel, int parno, String title, String content, String resdate, int visited, String qid) {
		super();
		this.no = no;
		this.plevel = plevel;
		this.parno = parno;
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

	public int getPlevel() {
		return plevel;
	}

	public void setPlevel(int plevel) {
		this.plevel = plevel;
	}

	public int getParno() {
		return parno;
	}

	public void setParno(int parno) {
		this.parno = parno;
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

	public void setResdate(String resdate) {
		this.resdate = resdate;
	}

	public int getVisited() {
		return visited;
	}

	public void setVisited(int visited) {
		this.visited = visited;
	}

	public String getQid() {
		return qid;
	}

	public void setQid(String qid) {
		this.qid = qid;
	}

	@Override
	public String toString() {
		return "QnA [no=" + no + ", plevel=" + plevel + ", parno=" + parno + ", title=" + title + ", content=" + content
				+ ", resdate=" + resdate + ", visited=" + visited + ", qid=" + qid + "]";
	}
}