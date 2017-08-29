package org.gs.util;

import java.util.List;

public class Pager {
	private List<?> results;
	private int start;
	private int end;
	private int pageNo=1;
	private int pageSize=4;
	//totalPage总页数
	private int totalPage;
	private int count;//满足条件的总数量
	
	public void setResults(List<?> results){
		this.results =results;
		if (results !=null && !results.isEmpty()) {
			setStart(start+results.size());//TODO
		}
	}
	
	public List<?> getResults() {
		return results;
	}
	public void setStart(int start) {
		this.start = start;
		pageNo =start / pageSize;
		int mod = start % pageSize;
		if (mod != 0) {
			pageNo++;
		}
	}
	public int getStart() {
		start = (pageNo -1)* pageSize+1;
		return start;
	}
	public int getEnd(){
		end =pageNo *pageSize;
		if (end>count) {
			end=count;
		}
		return end;
	}
	public int getPageNo(){
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
		start+=(pageNo-1)*pageSize;//TODO
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setCount(int count) {
		this.count = count;
		totalPage =count / pageSize;
		if (count % pageSize!=0) {
			totalPage++;
		}
	}
	@Override
	public String toString() {
		return "Pager [results=" + results + ", start=" + start + ", end=" + end + ", pageNo=" + pageNo + ", pageSize="
				+ pageSize + ", totalPage=" + totalPage + ", count=" + count + "]";
	}
	
}
