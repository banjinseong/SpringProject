package com.inhatc.model;

public class BoardVO {
	//�Խ��� ��ȣ
	private int id;
	//����
	private String title;
	//����
	private String content;
	//�ۼ���
	private String writer;
	//��ȸ��
	private int view;
	//������
	private String created_date;
	//������
	private String modified_date;
	//�����ѹ�
	private int user_id;
	
	@Override
	public String toString() {
		return "BoardVO [id=" + id + ", title=" + title + ", content=" + content + ", writer=" + writer + ", view="
				+ view + ", created_date=" + created_date + ", modified_date=" + modified_date + ", user_id=" + user_id
				+ "]";
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	public String getCreated_date() {
		return created_date;
	}
	public void setCreated_date(String created_date) {
		this.created_date = created_date;
	}
	public String getModified_date() {
		return modified_date;
	}
	public void setModified_date(String modified_date) {
		this.modified_date = modified_date;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
}
