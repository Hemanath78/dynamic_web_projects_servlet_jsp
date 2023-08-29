package com.fssa.agrokart.day07.solved;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetAllAccounts
 */
@WebServlet("/GetAllAccountServlet")
public class GetAllAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String ACCOUNT_JSP = "day07/solved/account-list.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Account> accounts = new ArrayList<>();

		accounts.add(new Account("100", "Bharath", 1000, LocalDate.now()));
		accounts.add(new Account("200", "Ram", 2000, LocalDate.now()));
		accounts.add(new Account("300", "Dhivya", 3000, LocalDate.now()));
		request.setAttribute("ACCOUNTS_LIST", accounts);
		RequestDispatcher dispatcher = request.getRequestDispatcher(ACCOUNT_JSP);
		dispatcher.forward(request, response);
	}

}