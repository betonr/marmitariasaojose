<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-lg navbar-light">
	<h1 class="fontzero">Navegue em nosso menu</h1>
	<a class="navbar-brand logo" href="/marmitariasj/public/">Marmitaria SÃO JOSÉ</a>

	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#menuAplicacao" aria-controls="menuAplicacao"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="menuAplicacao">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item">
				<a class="nav-link" href="/marmitariasj/public/">Inicio</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="/marmitariasj/public/cardapio">Cardápio</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="/marmitariasj/public/contato">Fale Conosco</a>
			</li>
		</ul>
		
		<% 
			if(session.getAttribute("usuario") != null) {
		%>
		<div class="form-inline my-2 my-lg-0">
			<a href="/marmitariasj/usuario/" class="btn btn-primary btn-entrar" >Perfil</a> 
			<a href="/deslogar" class="btn btn-light">Deslogar</a> 
		</div>
		<% 
			} else {
		%>
		<div class="form-inline my-2 my-lg-0">				
			<a href="/marmitariasj/public/login" class="btn btn-light btn-entrar">Entrar</a> 
			<a href="/marmitariasj/public/cadastro" class="btn btn-success">Cadastrar</a> 
		</div>
		<% 
			}
		%>
	</div>
</nav>
