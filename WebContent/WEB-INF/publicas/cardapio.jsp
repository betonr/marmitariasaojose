<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Marmitaria SÃO JOSÉ - Cardápio</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="../static/plugins/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="../static/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="../static/css/cardapio.css" rel="stylesheet" type="text/css"/>

</head>

<body>
	
	<c:import url="/partes/topo.jsp" />
	
	<section class="cardapio">
		<div class="titulo-page">
			<h1><b>Confira as nossas opções de hoje</b></h1>
			<p>Não deixe de pedir sua marmitex, agora mesmo!</p>
		</div>
		
		<div class="container">
			<div class="row container justify-content-center">
				<article class="col-md-4">
					<div class="box">
						<p class="titulo">Opção 1</p>
						<h2>titulo</h2>
						<p class="descricao">descricao</p>
						<p class="acompanhamento">
							<span class="fa fa-plus"></span>
							acompanhamento
						</p>
					</div>				
				</article>
				
				<!-- <article class="col-md-12">
					<p style="text-align: center">DESCULPE, O CARDÁPIO DE HOJE AINDA NÃO ESTÁ DISPONÍVEL!!!</p>
				</article> -->
			</div>
			
			<div class="row justify-content-center">
				<a href="/marmitariasj/public/cardapio" class="btn btn-warning btn-lg">
					<i class="fa fa-hand-o-right"></i>
					Peça sua marmitex
				</a>
			</div>
		</div>
		
	</section>
	
	<c:import url="/partes/rodape.jsp" />

</body>
</html>