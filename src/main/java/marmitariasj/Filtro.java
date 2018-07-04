package marmitariasj;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter(urlPatterns="/marmitariasj/*")
public class Filtro implements Filter{

    @Override
    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {

    	HttpServletRequest req = (HttpServletRequest) request;
    	HttpServletResponse resp = (HttpServletResponse) response;
    	
    	String subPath = req.getRequestURI().substring(13);
    	
    	if(subPath.indexOf("/admin") >= 0) {
    		if(subPath.indexOf("/admin/") >= 0) chain.doFilter(request, response);
    		else resp.sendRedirect("/marmitariasj/admin/"+subPath.substring(1));
    		
    	} else if(subPath.indexOf("/usuario") >= 0) {
    		if(subPath.indexOf("/usuario/") >= 0) chain.doFilter(request, response);
    		else resp.sendRedirect("/marmitariasj/usuario/"+subPath.substring(1));
    		
    	} else if(subPath.indexOf("/public") >= 0) {
    		if(subPath.indexOf("/public/") >= 0) chain.doFilter(request, response);
    		//else if(subPath.indexOf("/public") >= 0) resp.sendRedirect("/marmitariasj/public/");
    		else resp.sendRedirect("/marmitariasj/public/"+subPath.substring(1));
    	
    	} else {
    		chain.doFilter(request, response);
    	}
    	
    }
    
    @Override
    public void init(FilterConfig config) throws ServletException {
    }

}