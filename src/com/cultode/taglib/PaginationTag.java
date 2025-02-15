package com.cultode.taglib;

import java.io.Writer;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class PaginationTag extends SimpleTagSupport {
	private String uri;
	 private int offset;
	 private int count;
	 private int max = 25;
	 private int steps = 25;
	 private String previous = "Previous";
	 private String next = "Next";
	 
	 private Writer getWriter() {
	  JspWriter out = getJspContext().getOut();
	  return out;
	 }
	 
	 @Override
	 public void doTag() throws JspException {
	  Writer out = getWriter();
	 
	  try {
	   out.write("<nav aria-label=\"page navigation example\">");
	   out.write("<ul class=\"pagination justify-content-center\">");
	    
	   if(offset<steps)
	    out.write(constructLink(1, previous, "disabled", true));
	   else
	    out.write(constructLink(offset-steps, previous, null, false));
	    
	   for(int itr=0;itr<count;itr+=steps) {
	    if(offset==itr)
	     out.write(constructLink((itr/25+1)-1 *steps, String.valueOf(itr/25+1), "active", true));
	    else
	     out.write(constructLink(itr/25*steps, String.valueOf(itr/25+1), null , false));
	   }
	 
	   if(offset+steps>=count)
	    out.write(constructLink(offset+steps, next, "disabled", true));
	   else
	    out.write(constructLink(offset+steps, next, null , false));
	    
	    
	   out.write("</ul>");
	   out.write("</nav>");
	  } catch (java.io.IOException ex) {
	   throw new JspException("Error in Paginator tag", ex);
	  }
	 }
	 
	 
	 private String constructLink(int page, String text, String className, boolean disabled) {
	  StringBuilder link = new StringBuilder("<li");
	  if (className != null) {
	   link.append(" class=\"page-item");
	   link.append(className);
	   link.append("\"");
	  }
	  if(disabled)
	   link.append(">").append("<a class=\"page-link\" href=\"#\">"+text+"</a></li>");
	  else
	   link.append(">").append("<a class=\"page-link\" href=\""+uri+"/"+page + "\">"+text+"</a></li>");
	  return link.toString();
	 }
	 
	 public String getUri() {
	  return uri;
	 }
	 
	 public void setUri(String uri) {
	  this.uri = uri;
	 }
	 
	 public int getOffset() {
	  return offset;
	 }
	 
	 public void setOffset(int offset) {
	  this.offset = offset;
	 }
	 
	 public int getCount() {
	  return count;
	 }
	 
	 public void setCount(int count) {
	  this.count = count;
	 }
	 
	 public int getMax() {
	  return max;
	 }
	 
	 public void setMax(int max) {
	  this.max = max;
	 }
	 
	 public String getPrevious() {
	  return previous;
	 }
	 
	 public void setPrevious(String previous) {
	  this.previous = previous;
	 }
	 
	 public String getNext() {
	  return next;
	 }
	 
	 public void setNext(String next) {
	  this.next = next;
	 }
	 
	 public int getSteps() {
	  return steps;
	 }
	 
	 public void setSteps(int steps) {
	  this.steps = steps;
	 }
}
