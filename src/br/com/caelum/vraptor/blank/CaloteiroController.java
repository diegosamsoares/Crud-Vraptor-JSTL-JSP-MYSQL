package br.com.caelum.vraptor.blank;

import java.sql.Connection;
import java.util.List;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;



@Resource
public class CaloteiroController {

	
	Result result;
	public CaloteiroController(Result result) {
		this.result=result;
	
	}
	
	
	
	@Path("/caloteiro")
	public void index(){
		
	}
	
	
	@Path("/caloteiro/adiciona")
	public void adiciona(Caloteiro caloteiro){
		Connection connection = new ConnectionFactory().getConnection();
		 
		CaloteiroDao dao = new CaloteiroDao(connection);
		dao.adiciona(caloteiro);
		result.redirectTo(CaloteiroController.class).listar();
		
	}
	
	
	

	@Path("/caloteiro/lista")
	public List<Caloteiro> listar(){
		Connection connection = new ConnectionFactory().getConnection();
		 
		CaloteiroDao dao = new CaloteiroDao(connection);
		return dao.getLista();
		
	}
	
	
	
	
	@Get("/caloteiro/deleta/{id}")
	   public void excluir(Long id){
			
		Connection connection = new ConnectionFactory().getConnection();
		CaloteiroDao dao = new CaloteiroDao(connection);
		dao.deleta(dao.getCaloteiro(id));
		result.redirectTo(CaloteiroController.class).listar();
		}
	
	@Get("/caloteiro/altera/{id}")
	public Caloteiro atualiza(Long id){
		Connection connection = new ConnectionFactory().getConnection();
		CaloteiroDao dao = new CaloteiroDao(connection);
		Caloteiro caloteiro = new Caloteiro();
	    caloteiro= dao.getCaloteiro(id);
	    
		
	    return caloteiro;
	   
	}
	
	
	@Path("/caloteiro/salva")
	public void salvaatualizado(Caloteiro caloteiro){
		Connection connection = new ConnectionFactory().getConnection();
		CaloteiroDao dao = new CaloteiroDao(connection);
		
		dao.altera(caloteiro);
		result.redirectTo(CaloteiroController.class).listar();
	}
	
}
