<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Marmitaria SÃO JOSÉ</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="../static/plugins/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="../static/css/index.css" rel="stylesheet" type="text/css"/>
<link href="../static/css/layout.css" rel="stylesheet" type="text/css"/>

</head>

<body>
	
	<c:import url="/partes/topo.jsp" />
	
	<div id="carouselBanner" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselBanner" data-slide-to="0" class="active"></li>
			<li data-target="#carouselBanner" data-slide-to="1"></li>
			<li data-target="#carouselBanner" data-slide-to="2"></li>
		</ol>
	
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="../static/images/banner1.jpg">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="../static/images/banner2.jpg">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="../static/images/banner3.jpg">
			</div>
		</div>
	
		<a class="carousel-control-prev" href="#carouselBanner" role="button"
			data-slide="prev"> <span class="carousel-control-prev-icon"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> 
		<a class="carousel-control-next" href="#carouselBanner" role="button"
			data-slide="next"> <span class="carousel-control-next-icon"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>
	
	<section class="container box-opcoes-diaria">

		<h1>Confira Nossas Opções de Hoje</h1>
		<p class="subtitle">E PEÇA SUA DELICIOSA MARMITA!</p>

		<div class="row justify-content-center" >
			<div class="col-md-4">
				<div class="box">
					<h2> Opção 1</h2>
					<h3>&#10004; title</h3>
				</div>
			</div>
			
			<!-- <div class="col-md-12">
				<p style="text-align: center">DESCULPE, O CARDÁPIO DE HOJE AINDA NÃO ESTÁ DISPONÍVEL!!!</p>
			</div> -->
		</div>
		
		<div class="precos">
			<p><span class="fa fa-credit-card"></span> Por Apenas: </p>
			<div class="row justify-content-center">
				<p class="col-6" style="border-right: 1px solid #ccc; text-align: right;">
					<b>mini:</b> R$ 15,00
				</p>
				<p class="col-6" style="text-align: left;">
					<b>normal:</b> R$ 20,00
				</p>
			</div>
			<div class="form_pagamento">
				<span class="fa fa-cc-visa"></span> 
				<span class="fa fa-cc-paypal"></span> 
				<span class="fa fa-cc-diners-club"></span> 
				<span class="fa fa-cc-amex"></span>
				<span class="fa fa-cc-mastercard"></span>
			</div>
		</div>

		<div class="row justify-content-center">
			<a href="/marmitariasj/public/cardapio" class="btn btn-warning btn-lg">&#10010; Veja o nosso cardápio COMPLETO</a>
		</div>
	</section>
	
	<c:import url="/partes/rodape.jsp" />

</body>
</html>