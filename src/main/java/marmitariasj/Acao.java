package marmitariasj;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Acao {
    String executa(HttpServletRequest request, HttpServletResponse response);
}