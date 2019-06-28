package org.senai.projetoPagina.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

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
		//pegar as informa��es do formul�rio
		Pessoa obj = new Pessoa();
		boolean sucesso = false;
		PrintWriter saida = response.getWriter();
		String checarEmail = request.getParameter("email");
		
		
		if(!checarEmail.equals("")) {
			sucesso = obj.pesquisarEmail(checarEmail);
			//System.out.println(sucesso);
			if(sucesso) {
				//System.out.println("Email j� cadastrado");
				saida.print("true");
				
			} else	{
				obj.setEmail(request.getParameter("email"));
				obj.setNome(request.getParameter("nome"));		
				obj.setSilhouette(request.getParameter("silhouette"));
				obj.setPromocao(request.getParameter("promocao"));
				obj.setArqGratuito(request.getParameter("arqGratuitos"));
				obj.setAchou(request.getParameter("achou"));
				obj.setCursoPago(request.getParameter("cursosPagos"));
				
				
				//System.out.println("Nome digitado: "+obj.getNome()+ " email "+ obj.getEmail()+
					//	" achou "+ obj.getAchou()+ " silhouette "+ obj.getSilhouette()+" gratuito "
						//+obj.getArqGratuito()+ " pago"+obj.getCursoPago());
				
				
				
				
				
				//int cod = Integer.parseInt(request.getParameter("cod"));
				sucesso = false;
				sucesso = obj.inserir();
			
				if(sucesso) {
					saida.print("Gravado com sucesso");
				}else {
					saida.print("Erro ao gravar");
				}
				
			}
			
		}
			
		/*
		obj.setEmail(request.getParameter("email"));
		obj.setNome(request.getParameter("nome"));		
		obj.setSilhouette(request.getParameter("silhouette"));
		obj.setPromocao(request.getParameter("promocao"));
		obj.setArqGratuito(request.getParameter("arqGratuitos"));
		obj.setAchou(request.getParameter("achou"));
		obj.setCursoPago(request.getParameter("cursosPagos"));
		
		
		//System.out.println("Nome digitado: "+obj.getNome()+ " email "+ obj.getEmail()+
			//	" achou "+ obj.getAchou()+ " silhouette "+ obj.getSilhouette()+" gratuito "
				//+obj.getArqGratuito()+ " pago"+obj.getCursoPago());
		
		
		
		
		
		//int cod = Integer.parseInt(request.getParameter("cod"));
		sucesso = false;
		sucesso = obj.inserir();
	
		if(sucesso) {
			saida.print("Gravado com sucesso<br>");
		}else {
			saida.print("erro ao gravar<br>");
		}
		
		*/
		
		
		
	}

}
