package com.jin.uri;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDeleteAction implements Action {

	@Override
	public String action(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		return "../board/delete-pro.jsp";
	}

}
