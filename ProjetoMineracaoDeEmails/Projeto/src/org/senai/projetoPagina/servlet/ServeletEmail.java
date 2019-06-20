package org.senai.projetoPagina.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.senai.projetoPagina.modelo.Pessoa;

@WebServlet(
		name ="ServeletEmail",
		urlPatterns = {"/serveletEmail"})

public class ServeletEmail extends HttpServlet{
	
	
	
	public void service(HttpServletRequest request,
			HttpServletResponse response) throws ServerException, IOException {
		//pegar as informações do formulário
		Pessoa obj = new Pessoa();
		boolean sucesso = false;
		
		String checarEmail = request.getParameter("checarEmail");
		if(!checarEmail.equals("")) {
			sucesso = obj.checarEmail(checarEmail);
			if(sucesso == true) {
				System.out.println("Email cadastrado");
			}
			
		}
		if(sucesso == false) {		
		obj.setEmail(request.getParameter("email"));
		obj.setNome(request.getParameter("nome"));		
		obj.setSilhouette(request.getParameter("silhouette"));
		obj.setPromocao(request.getParameter("promocao"));
		obj.setArqGratuito(request.getParameter("arqGratuitos"));
		obj.setAchou(request.getParameter("achou"));
		obj.setCursoPago(request.getParameter("cursosPagos"));
		
		
		System.out.println("Nome digitado: "+obj.getNome()+ " email "+ obj.getEmail()+
				" achou "+ obj.getAchou()+ " silhouette "+ obj.getSilhouette()+" gratuito "+obj.getArqGratuito()+ " pago"+obj.getCursoPago());
		
		
		
		PrintWriter saida = response.getWriter();
		
		//int cod = Integer.parseInt(request.getParameter("cod"));
		sucesso = false;
		sucesso = obj.inserir();
	
		if(sucesso) {
			saida.print("Gravado com sucesso");
		}else {
			saida.print("erro ao gravar");
		}
		
		}
		
		
		
	}

}
