<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Dashboard Admin - Marmitaria SÃO JOSÉ</title>

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
			<h2>Seja Bem-Vindo, ...!</h2>
  			<p>Aqui você pode: Visualizar os pedidos, confirma-los ou recusar.</p>
  			
	  		<ul class="nav nav-tabs" id="myTab" role="tablist">
			  	<li class="nav-item">
			    	<a class="nav-link active" id="confirmarPed-tab" data-toggle="tab" href="#confirmarPed" role="tab" aria-controls="confirmar" aria-selected="true">Pedidos não confirmados</a>
			  	</li>
			  	<li class="nav-item">
			    	<a class="nav-link" id="historicoPed-tab" data-toggle="tab" href="#historicoPed" role="tab" aria-controls="historico" aria-selected="false">Histórico de pedidos</a>
			  	</li>
			</ul>
		
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="confirmarPed" role="tabpanel" aria-labelledby="confirmar-tab">
		
					<c:import url="/partes/confirmPedido.jsp" />
				
				</div>
				<div class="tab-pane fade" id="historicoPed" role="tabpanel" aria-labelledby="historico-tab">
			  		
					<c:import url="/partes/historicoPedido.jsp" />
			  		
			  	</div>
			</div>
			
		</div>
	</section>
	
	<c:import url="/partes/rodape.jsp" />
	
</body>
</html>