<!DOCTYPE HTML>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>

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

	<form name="formulario">
		<div>
			<label id="labelNome">Nome:</label><br> <input type="text"
				class="form-control" id="nome" placeholder="Nome Completo"
				name="nome">

		</div>
		<div>
			<label id="labelEmail">Email:</label><br> <input type="text"
				class="form-control" id="email" placeholder="Insira seu e-mail"
				name="email">
		</div>
		
		<div >
			<label id="labelComoNosAchou">Como nos achou?</label><br> <select
				class="form-control form-control" id="achou">
				<option value="Sigo no Instagram">Sigo no Instagram</option>
				<option value="Indicação de Amigos">Indicação de Amigos</option>
				<option value="Pesquisando na internet">Pesquisando na internet</option>
			</select>
		</div>
		<div class="form-row">
		<div class="form-group col-md-5">
			<label id="labelTemSilhouette">Tem a Silhouette?</label><br>
			<td>Sim <input type="radio" id="temSim"> Não <input
				type="radio" id="nãoTem"></td>
		</div>
		
		<div class="form-group col-md-5">
		<label id="labelArqGratuitos">Deseja receber arquivos gratuitos?</label><br>
		<td>Sim <input type="radio" id="interesse"> Não <input
				type="radio" id="nãoInteresse"></td>
		</div>
		</div>
		
		<div class="form-row">
		<div class="form-group col-md-5">
		<label id="labelPromocoes">Gostaria de receber nossas promoções?</label><br>
		<td>Sim <input type="radio" id="intPromo"> Não <input
				type="radio" id="nãoPromo"></td>
		</div>
		<div>
		<label id="labelCursosPagos">Se interessa por cursos pagos?</label><br>
		<td>Sim <input type="radio" id="intCursosPagos"> Não <input
				type="radio" id="nãoCursosPagos"></td>
		</div>
		</div>
		

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
	<script>
		/* Digite o seu script aqui */
		
	</script>

</body>

</html>