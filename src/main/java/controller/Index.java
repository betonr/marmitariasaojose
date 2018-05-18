package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import marmitariasj.Acao;

public class Index implements Acao{

	@Override
    public String executa(HttpServletRequest request, HttpServletResponse response) {

        return "/WEB-INF/publicas/index.jsp";
    }
}
