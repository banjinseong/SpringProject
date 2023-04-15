package com.inhatc.model;

public class paging {
	private int pageNum;
	private int amount;
	private int skip;
	
	public paging() {
		this(1,10);
		this.skip = 0;
	}
	
	public paging(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.skip = (pageNum-1)*amount;
	}

	public int getSkip() {
		return skip;
	}

	public void setSkip(int skip) {
		this.skip = skip;
	}

	@Override
	public String toString() {
		return "paging [pageNum=" + pageNum + ", amount=" + amount + "]";
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.skip = (pageNum-1)*this.amount;
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.skip = (pageNum-1)*this.amount;
		this.amount = amount;
	}
}
