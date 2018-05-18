package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import marmitariasj.Acao;

public class Cardapio implements Acao{

	@Override
    public String executa(HttpServletRequest request, HttpServletResponse response) {

        return "/WEB-INF/publicas/cardapio.jsp";

    }
}
