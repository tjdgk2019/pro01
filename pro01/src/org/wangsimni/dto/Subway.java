package org.wangsimni.dto;

public class Subway {
	private int sno;
	private String stype;
	private String route;
	private String color;
	public Subway() {
		
	}
	
	public Subway(int sno, String stype, String no, String route, String color) {
		super();
		this.sno = sno;
		this.stype = stype;
		this.route = route;
		this.color = color;
	}

	public int getTno() {
		return sno;
	}

	public void setTno(int tno) {
		this.sno = tno;
	}

	public String getTtype() {
		return stype;
	}

	public void setTtype(String ttype) {
		this.stype = ttype;
	}


	public String getRoute() {
		return route;
	}

	public void setRoute(String route) {
		this.route = route;
	}

	public String getColor() {
		return color;
	}

	public void setComent(String color) {
		this.color = color;
	}

	@Override
	public String toString() {
		return "Traffic [sno=" + sno + ", stype=" + stype + ", route=" + route + ", color=" + color
				+ "]";
	}
	
	
}
