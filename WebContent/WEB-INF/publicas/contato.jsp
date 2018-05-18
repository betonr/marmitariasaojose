<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Marmitaria SÃO JOSÉ - Fale Conosco</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="../static/plugins/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="../static/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="../static/css/contato.css" rel="stylesheet" type="text/css"/>

</head>

<body>
	
	<c:import url="/partes/topo.jsp" />
	
	<section class="contato">
		<div class="titulo-page">
			<h1><b>Entre em contato conosco</b></h1>
			<p>Em nosso estabelecimento, via telefone ou e-mail!</p>
		</div>
		
		<div class="container">
			<div class="row justify-content-center">
				<article class="col-md-6">
					<div class="localizacao">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d229.26208511252304!2d-45.90038654452516!3d-23.163141837254162!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cc49e13f6acaa7%3A0x11568bb980fdff60!2sRESTAURANTE+E+LANCHONETE+BELLA+NINA!5e0!3m2!1spt-BR!2sbr!4v1520789470067" width="100%" height="400" style="border:0"></iframe>
					</div>				
				</article>
				
				<article class="col-md-6">
					<div class="fale-conosco">
						<h2>FALE CONOSCO: </h2>
						<br>
					
						<p><i class="fa fa-bank"></i> Rua passaguaçú, n° 10 (em frente ao PIO XII)</p>
						<p>Jardim Telespark - São José dos Campos - SP</p>
						<br>
						
						<p><i class="fa fa-tty"></i> (12) 0000-0000</p>
						<p><i class="fa fa-volume-control-phone"></i> (12) 90000-0000</p>
						<br>
						
						<p><i class="fa fa-envelope"></i> contato@marmitariasaojose.com.br</p>
					</div>				
				</article>				
			</div>
		</div>
	
	</section>
	
	<c:import url="/partes/rodape.jsp" />

</body>
</html>