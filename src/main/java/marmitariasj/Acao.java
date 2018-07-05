package marmitariasj;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Acao {
	void get(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException;
	void post(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException;
	void put(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException;
	void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException;
}