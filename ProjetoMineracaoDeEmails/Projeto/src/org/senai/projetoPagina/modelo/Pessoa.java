package org.senai.projetoPagina.modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Pessoa {
	private int cod;
	

	private String nome;
	private String email;
	private String silhouette;
	private String promocao;
	private String arqGratuito;
	private String achou;
	private String cursoPago;
	private String senha;
	
	
	public int getCod() {
		return cod;
	}
	public void setCod(int cod) {
		this.cod = cod;
	}
	public String getCursoPago() {
		return cursoPago;
	}
	public void setCursoPago(String cursoPago) {
		this.cursoPago = cursoPago;
	}
	public String getPromocao() {
		return promocao;
	}
	public void setPromocao(String promocao) {
		this.promocao = promocao;
	}
	public String getAchou() {
		return achou;
	}
	public void setAchou(String achou) {
		this.achou = achou;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSilhouette() {
		return silhouette;
	}
	public void setSilhouette(String silhouette) {
		this.silhouette = silhouette;
	}
	public String getArqGratuito() {
		return arqGratuito;
	}
	public void setArqGratuito(String arqGratuito) {
		this.arqGratuito = arqGratuito;
	}
	
	// método inserir
		public boolean inserir() {
			Connection conexao = new ConectarJDBC().getConectar();
			if (conexao != null) {
				String sql = "insert into emails(" + "nome_completo  ," + "email         ," + "achou          ,"
						+ "silhouette   ," + "promocao    ," + "arq_gratuito    ," + "arq_pago " + ") "
						+ "values (?," + "?," + "?," + "?," + "?," + "?," + "?" + ")";
				try {
					PreparedStatement prepararSQL = conexao.prepareStatement(sql);

					prepararSQL.setString(1, nome);
					prepararSQL.setString(2, email);
					prepararSQL.setString(3, achou);
					prepararSQL.setString(4, silhouette);
					prepararSQL.setString(5, promocao);
					prepararSQL.setString(6, arqGratuito);
					prepararSQL.setString(7, cursoPago);

					prepararSQL.execute();
					prepararSQL.close();
					return true;
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return false;
				}
			}
			return false;

		}

		
		public boolean checarEmail(String checarEmail) {
			// TODO Auto-generated method stub
			Connection conexao = new ConectarJDBC().getConectar();
			try {
				PreparedStatement ps = conexao.prepareStatement("select * from emails where email =?");
				ps.setString(1,checarEmail );
				
				return true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return false;
		}

}
