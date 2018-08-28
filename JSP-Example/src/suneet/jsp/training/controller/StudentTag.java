package suneet.jsp.training.controller;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import suneet.jsp.training.model.Student;

public class StudentTag extends TagSupport {
	private static final long serialVersionUID = 1L;

	public int doStartTag() throws JspException {  
		Student student = new Student("Suneet M Patil", 75.66);
		JspWriter out = pageContext.getOut();  
		try {  
			out.print("Student Name : "+student.getName() + " - Marks : " + student.getMarks());  
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}  
		return SKIP_BODY;  
	} 
	
	@Override
	public int doEndTag() throws JspException {
		return super.doEndTag();
	}
}
