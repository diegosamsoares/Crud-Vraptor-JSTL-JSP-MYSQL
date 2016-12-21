package br.com.caelum.vraptor.blank;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;



@WebFilter(filterName="FiltroConexao" , urlPatterns="/sistema")
public class FiltroConexao implements Filter {

	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		
		Connection conexao = new ConnectionFactory().getConnection();
		request.setAttribute("conexao", conexao);
		chain.doFilter(request, response);
		try {
			conexao.close();
		} catch (SQLException e) {
			throw new RuntimeException("Erro ao tentar fechar a conexao com o banco");
			
		}
		
	}

	public void init(FilterConfig arg0) throws ServletException {
		
	}
	
	
}
