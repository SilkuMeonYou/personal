package index;

import java.util.*;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class tabs_review
 */
@WebServlet("/tabs_review")
public class tabs_review extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public tabs_review() {
        super();
    }


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("tabs_review check");
		
		List<tabs_reviewInfo> list = new ArrayList<>();
		
		tabs_reviewInfo trI = new tabs_reviewInfo();
		
		
		
	}


	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
