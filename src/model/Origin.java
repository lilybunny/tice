package model;

public class Origin {
	private String origin;
	private double height;
	private double weight;
	private int fhl;
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public void setFhl(int fhl) {
		this.fhl = fhl;
	}
	public String getOrigin() {
		return origin;
	}
	public double getHeight() {
		return height;
	}
	public double getWeight() {
		return weight;
	}
	public int getFhl() {
		return fhl;
	}
	 public String toString() {
			return "区域："+origin+"肺活量："+fhl;
	}
		
}
