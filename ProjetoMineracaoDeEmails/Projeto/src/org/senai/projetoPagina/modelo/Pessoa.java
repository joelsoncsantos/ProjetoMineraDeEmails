package org.senai.projetoPagina.modelo;

public class Pessoa {
	private String nome;
	private String email;
	private String silhouette;
	private String promocao;
	private String arqGratuito;
	private String achou;
	
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
	

}
