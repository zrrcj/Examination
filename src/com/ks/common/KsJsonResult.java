package com.ks.common;

import org.springframework.stereotype.Controller;

@Controller("msg")
public class KsJsonResult {
	private String msgs;

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	private String url;

	public KsJsonResult() {

	}

	public String getMsgs() {
		return msgs;
	}

	public void setMsgs(String msgs) {
		this.msgs = msgs;
	}
}
