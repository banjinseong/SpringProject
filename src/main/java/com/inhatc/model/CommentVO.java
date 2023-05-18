package com.inhatc.model;

public class CommentVO {
	private int id;
	private int bno;
	private String content;
	private String writer;
	private String created_date;
	@Override
	public String toString() {
		return "CommentVO [id=" + id + ", bno=" + bno + ", content=" + content + ", writer=" + writer
				+ ", created_date=" + created_date + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getCreated_date() {
		return created_date;
	}
	public void setCreated_date(String created_date) {
		this.created_date = created_date;
	}
}
