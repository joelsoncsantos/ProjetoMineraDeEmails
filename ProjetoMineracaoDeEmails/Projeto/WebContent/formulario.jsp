<!DOCTYPE HTML>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="pt-br">
<head>

<!-- Caracteres Unicode -->
<meta charset="UTF-8">

<!-- Autoria -->
<meta name="author" content="">

<!-- Mecanismos de busca -->
<meta name="robots" content="index, follow">
<meta name="keywords"
	content="HTML, HTML 5, CSS, CSS3, script, javaScript, js, jQuery, Bootstrap, twitter, responsivo, Design, mobile, first, grid, framework, SENAI, programaÃ§Ã£o, programador, desenvolvimento, desenvolvedor, web, java, popper.js, menu, Carousel, Cards">
<meta name="description"
	content="PÃ¡gina feita com o framework Bootstrap 4.0.">

<!-- Compatiblilidade com IE/Edge -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Responsivo/Mobile First -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" href="imagens/bootstrap-stack.png"
	type="image/png">

<!-- Bootstrap CSS -->
<!--<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" media="screen">-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">


<!-- CSS Externo -->
<link rel="stylesheet" href="" type="text/css">

<!-- CSS Interno -->
<style></style>
<!-- TÃ­tulo da pÃ¡gina -->
<title>Detalhe Personalizados</title>
</head>
<body>

	<form name="formulario" >
	<div id="msg"></div>
		<div class="form-group col-md-6" >
			<label id="labelNome">Nome:</label><br> <input type="text"
				class="form-control"  placeholder="Nome Completo"
				id="nome" name="nome" onblur="verificarNome();">
				<div id="alert-nome"></div>

		</div>
		<div class="form-group col-md-6" >
		 
			<label id="labelEmail" from="email" >Email:</label><br> <input
				type="text" class="form-control" 
				placeholder="Insira seu e-mail" name="email" onblur="checarEmail();" id="email" >
				<div id="alert-email"></div>
				
		</div>
		<div class="form-group col-md-3">
			<div>
				<label id="labelSenha">Senha:</label><br> <input
					type="password" class="form-control" id="senha"
					placeholder="No mínimo 6 digitos" name="senha">
			</div>
			<div >
				<label id="labelSenha">Confirmar senha:</label><br> <input
					type="password" class="form-control" 
					placeholder="No mínimo 6 digitos" name="confirmarSenha" id="confirmarSenha"
					onblur="verificarSenha();">
			</div>
			<div id="alert-senha"></div>
		</div>
		<div class="form-group col-md-6">
			<label id="labelComoNosAchou">Como nos achou?</label><br> <select
				class="form-control form-control" id="achou">
				<option value="Sigo no Instagram">Sigo no Instagram</option>
				<option value="Indicação de Amigos">Indicação de Amigos</option>
				<option value="Pesquisando na internet">Pesquisando nainternet</option>
				<option value="Outros">Outros</option>
			</select>
		</div>
		<div class="form-row">
			<div class="form-group col-md-3">
				<label id="labelTemSilhouette">Tem a Silhouette?</label><br> <select
					class="form-control form-control" id="silhouette">
					<option value="Sim">Sim</option>
					<option value="Não">Não</option>
				</select>
			</div>

			<div class="form-group col-md-3">
				<label id="labelPromocoes">Gostaria de receber nossas
					promoções?</label><br> <select class="form-control form-control"
					id="promocao">
					<option value="Sim">Sim</option>
					<option value="Não">Não</option>
				</select>

			</div>
		</div>

		<div class="form-row">
			<div class="form-group col-md-3">
				<label id="labelArqGratuitos">Deseja receber arquivos
					gratuitos?</label><br> <select class="form-control form-control"
					id="arqGratuitos">
					<option value="Sim">Sim</option>
					<option value="Não">Não</option>
				</select>
			</div>
			<div class="form-group col-md-3">
				<label id="labelCursosPagos">Tem interesse por cursos pagos?</label><br>

				<select class="form-control form-control" id="cursosPagos">
					<option value="Sim">Sim</option>
					<option value="Não">Não</option>
				</select>
			</div>
		</div>

		
			
			<td>
				<button style="background: #DC143C" type="button"
					class="btn text-white" onclick="novo();" >Novo</button>
				<button style="background: #48D1CC" type="button"
					class="btn text-white" onclick="gravar();">Gravar</button>
					

			</td>
		


	</form>


	<!-- JavaScript -->

	<!-- Ordem obrigatÃ³ria: jQuery, Popper.js, Bootstrap.js, Script do desenvolvedor -->

	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>

	<!-- Popper.js -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>

	<!-- bootstrap.js -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>

	<!-- Script do desenvolvedor -->
	<script type="text/javascript">
		/* Digite o seu script aqui */

		function dadosForm() {
			var dados = "";
			dados += "nome=" + document.getElementById("nome").value;
			dados += "&email=" + document.getElementById("email").value;
			dados += "&achou=" + document.getElementById("achou").value;
			dados += "&silhouette="
					+ document.getElementById("silhouette").value;
			dados += "&promocao=" + document.getElementById("promocao").value;
			dados += "&arqGratuitos="
					+ document.getElementById("arqGratuitos").value;
			dados += "&cursosPagos="
					+ document.getElementById("cursosPagos").value;
			//dados += "&cod="+document.getElementById("cod").value;

			return dados;
		}

		function gravar() {
		//var aux = checarEmail();
		//alert(aux);
		if(checarEmail()!=true){
			//alert("gravar");
			var xhttp = new XMLHttpRequest();
			
			xhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					// Typical action to be performed when the document is ready:
					var msg = xhttp.responseText;
					document.getElementById("msg").innerHTML = msg;
					
					if (msg == "Gravado com sucesso") {
						document.getElementById("msg").className = "alert alert-info";
						
					} else {
						document.getElementById("msg").className = "alert alert-danger";
					}
				}
			};
			
			xhttp.open("GET", "serveletEmail?" + dadosForm(), true);
			xhttp.send();
		}
		}
		
		function novo() {
			window.location.replace('formulario.jsp');

		}

		

		function checarEmail() {
			
			if (document.forms[0].email.value == 0
					|| document.forms[0].email.value.indexOf('@') == -1
					|| document.forms[0].email.value.indexOf('.') == -1) {
				//alert("Por favor, informe um E-MAIL válido ");
				document.getElementById("alert-email").innerHTML = "Por favor forneça um email válido";
				document.getElementById("alert-email").style.color = "red";

				return false;
				
			}else{
				
			var email = document.getElementById("email").value;
			
			var xhttp = new XMLHttpRequest(email);
			
			xhttp.onreadystatechange = function() {
				
				if (this.readyState == 4 && this.status == 200) {
					// Typical action to be performed when the document is ready:
						
					var msg = xhttp.responseText;
					//alert("Por favor, informe um E-MAIL válido 828");
				if(msg == 'true'){
					//alert("Por favor, informe um E-MAIL válido 888");
					document.getElementById("alert-email").innerHTML = 'Email já cadastrado';
					document.getElementById("alert-email").style.color = "red";
					return false;
				} else {
					//alert("Por favor, informe um E-MAIL válido 9999999");
						document.getElementById("alert-email").innertHTML = "";
						return true;
					}
				
								
				}
			};
			xhttp.open("GET", "serveletEmail?checarEmail="+email , true);
			xhttp.send();
			
			
			}
		}

	

		function verificarSenha() {

			if (document.getElementById("senha").value != document
					.getElementById("confirmarSenha").value) {
				document.getElementById("alert-senha").className = "alert alert-danger";
				document.getElementById("alert-senha").innerHTML = "Senha não Confere";
				return false;
			}else{
				document.getElementById("alert-senha").innertHTML = "";
				return true;
			}

		}
		function verificarNome(){
			var nome2 = document.getElementById("nome").value;
			
			if(nome2.length < 3 ){
				document.getElementById("alert-nome").innerHTML = "Insira o nome correto ";
				 document.getElementById("alert-nome").style.color = "red";
				return false;
			}else{
				document.getElementById("alert-nome").innerHTML = "";
				 
				return true;
			}
			}
			
			
		
		
	</script>
</body>
</html>