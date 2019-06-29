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
						
			}
			
		}
			
			
		
	}

}
