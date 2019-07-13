package model;

public class avg2015 {
	public double y1;
	public double y2;
	public double y3;
	public double y4;
	public int ssex;
	public double getY1() {
		return y1;
	}
	public double getY2() {
		return y2;
	}
	public double getY3() {
		return y3;
	}
	public double getY4() {
		return y4;
	}
	public int getSsex() {
		return ssex;
	}
	public void setY1(double y1) {
		this.y1 = y1;
	}
	public void setY2(double y2) {
		this.y2 = y2;
	}
	public void setY3(double y3) {
		this.y3 = y3;
	}
	public void setY4(double y4) {
		this.y4 = y4;
	}
	public void setSsex(int ssex) {
		this.ssex = ssex;
	}
	public String toString() {
			return y1+"大一   "+y2+"大二   "+y3+"大三     "+y4+"大四";
	}
}
