package com.inhatc.model;

public class pageMaker {
	/* ���� ������ */
    private int startPage;
    
    /* �� ������ */
    private int endPage;
    
    /* ���� ������, ���� ������ �������� */
    private boolean prev, next;
    
    /*��ü �Խù� ��*/
    private int total;
    
    /* ���� ������, �������� �Խù� ǥ�ü� ���� */
    private paging pg;
    
    /* ������ */
    public pageMaker(paging pg, int total) {
        
        this.pg = pg;
        this.total = total;
        
        /* ������ ������ */
        this.endPage =(int)(Math.ceil(pg.getPageNum()/10.0))*10;
        /* ���� ������ */
        
        this.startPage =this.endPage - 9;
        
        /* ��ü ������ ������ */
        int realEnd =(int)(Math.ceil(total * 1.0/pg.getAmount()));
        
        /* ��ü ������ ������(realend)�� ȭ�鿡 ���̴� ������������(endPage)���� ���� ���, ���̴� ������(endPage) �� ���� */
        if(realEnd < this.endPage) {
            this.endPage = realEnd;
        }
        
        /* ���� ������(startPage)���� 1���� ū ��� true */
        this.prev = this.startPage > 1;
        
        /* ������ ������(endPage)���� 1���� ū ��� true */
        this.next = this.endPage < realEnd;
        
        
    }

	@Override
	public String toString() {
		return "pageMaker [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", total=" + total + ", pg=" + pg + "]";
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public paging getPg() {
		return pg;
	}

	public void setPg(paging pg) {
		this.pg = pg;
	}
}
