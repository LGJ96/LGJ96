package vo;
//포워딩 정보를 저장하는 클래스
//이광준
public class ActionForward {
	private String url;
	private boolean redirect;
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public boolean isRedirect() {
		return redirect;
	}
	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}
	
}
