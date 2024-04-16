package org.wangsimni.dto;

public class Guide {
	private int pcode;
	private String pname;
	private String ptype;
	private String paddr;
	private String ptel;
	private String pcoment;
	private String premark;
	
	public Guide() {
		
	}
	
	public Guide(int pcode, String pname, String ptype, String paddr, String ptel, String pcoment, String premark) {
		super();
		this.pcode = pcode;
		this.pname = pname;
		this.ptype = ptype;
		this.paddr = paddr;
		this.ptel = ptel;
		this.pcoment = pcoment;
		this.premark = premark;
	}

	public int getPcode() {
		return pcode;
	}

	public void setPcode(int pcode) {
		this.pcode = pcode;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPtype() {
		return ptype;
	}

	public void setPtype(String ptype) {
		this.ptype = ptype;
	}

	public String getPaddr() {
		return paddr;
	}

	public void setPaddr(String paddr) {
		this.paddr = paddr;
	}

	public String getPtel() {
		return ptel;
	}

	public void setPtel(String ptel) {
		this.ptel = ptel;
	}

	public String getPcoment() {
		return pcoment;
	}

	public void setPcoment(String pcoment) {
		this.pcoment = pcoment;
	}

	public String getPremark() {
		return premark;
	}

	public void setPremark(String premark) {
		this.premark = premark;
	}

	@Override
	public String toString() {
		return "Gide [pcode=" + pcode + ", pname=" + pname + ", ptype=" + ptype + ", paddr=" + paddr + ", ptel=" + ptel
				+ ", pcoment=" + pcoment + ", premark=" + premark + "]";
	}
	
}
