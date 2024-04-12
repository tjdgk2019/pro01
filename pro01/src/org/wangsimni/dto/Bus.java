package org.wangsimni.dto;

public class Bus {
	private int bno;
	private String btype;
	private String route;
	
	public Bus() {
		
	}
	public Bus(int bno, String btype, String route) {
		super();
		this.bno = bno;
		this.btype = btype;
		this.route = route;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getBtype() {
		return btype;
	}
	public void setBtype(String btype) {
		this.btype = btype;
	}
	public String getRoute() {
		return route;
	}
	public void setRoute(String route) {
		this.route = route;
	}
	
	@Override
	public String toString() {
		return "Bus [bno=" + bno + ", btype=" + btype + ", route=" + route + "]";
	}	
}
