<%@page import="model.Produto"%>
<%@page import="model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Dashboard Usuario - Marmitaria SÃO JOSÉ</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="../static/plugins/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="../static/plugins/ol4/ol.css" rel="stylesheet" type="text/css"/>
<link href="../static/css/dashboard.css" rel="stylesheet" type="text/css"/>
<link href="../static/css/layout.css" rel="stylesheet" type="text/css"/>

</head>

<body>
	
	<c:import url="/partes/topo.jsp" />
	
	<section class="dashboard">
		
		<div class="container">	
			<h2>Seja Bem-Vindo, <strong><%= ((Usuario) session.getAttribute("usuario")).getLogin() %></strong>!</h2>
  			<p>Aqui você pode: alterar seus dados, solicitar pedidos, além de consultar seus pedidos realizados.</p>
  			
	  		<ul class="nav nav-tabs" id="myTab" role="tablist">
			  	<li class="nav-item">
			    	<a class="nav-link active" id="perfil-tab" data-toggle="tab" href="#perfil" role="tab" aria-controls="perfil" aria-selected="true">Perfil</a>
			  	</li>
			  	<li class="nav-item">
			    	<a class="nav-link" id="cadPedido-tab" data-toggle="tab" href="#cadPedido" role="tab" aria-controls="cadPedido" aria-selected="false">Novo Pedido</a>
			  	</li>
				<li class="nav-item">
			    	<a class="nav-link" id="pedidos-tab" data-toggle="tab" href="#pedidos" role="tab" aria-controls="pedidos" aria-selected="false">Meus pedidos</a>
				</li>
			</ul>
		
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="perfil" role="tabpanel" aria-labelledby="perfil-tab">
		
					<c:import url="/partes/meuEndereco.jsp" />
					<c:import url="/partes/minhasInfo.jsp" />
				
				</div>
				<div class="tab-pane fade" id="cadPedido" role="tabpanel" aria-labelledby="cadPedido-tab">
			  		
			  		<c:import url="/partes/cadPedido.jsp" />
			  		
			  	</div>
				<div class="tab-pane fade" id="pedidos" role="tabpanel" aria-labelledby="pedidos-tab">
				
					<c:import url="/partes/visPedido.jsp" />
				
				</div>
			</div>
			
		</div>
	</section>
	
	<c:import url="/partes/rodape.jsp" />
	
	<script src="../static/js/controllers/PedidoController.js"></script>
	<script src="../static/js/controllers/UsuarioController.js"></script>
	<script>
		let pedidoController = new PedidoController();
		let usuarioController = new UsuarioController();
	</script>
</body>
</html>