package vo;

import java.sql.Timestamp;

public class ReviewVO {

	private int rev_id;
	private double res_score;
	private Timestamp rev_notice_date;
	private int rev_like;
	private String rev_pic;
	private String rev_content;
	private int rev_re_step;
	
	
	
	
	public int getRev_id() {
		return rev_id;
	}
	public void setRev_id(int rev_id) {
		this.rev_id = rev_id;
	}
	public double getRes_score() {
		return res_score;
	}
	public void setRes_score(double res_score) {
		this.res_score = res_score;
	}
	public Timestamp getRev_notice_date() {
		return rev_notice_date;
	}
	public void setRev_notice_date(Timestamp rev_notice_date) {
		this.rev_notice_date = rev_notice_date;
	}
	public int getRev_like() {
		return rev_like;
	}
	public void setRev_like(int rev_like) {
		this.rev_like = rev_like;
	}
	public String getRev_pic() {
		return rev_pic;
	}
	public void setRev_pic(String rev_pic) {
		this.rev_pic = rev_pic;
	}
	public String getRev_content() {
		return rev_content;
	}
	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}
	public int getRev_re_step() {
		return rev_re_step;
	}
	public void setRev_re_step(int rev_re_step) {
		this.rev_re_step = rev_re_step;
	}
	
	
	
	
	
}