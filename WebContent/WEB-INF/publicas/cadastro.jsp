<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Marmitaria SÃO JOSÉ - Cadastro</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="../static/plugins/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="../static/css/cadastro.css" rel="stylesheet" type="text/css"/>
<link href="../static/css/layout.css" rel="stylesheet" type="text/css"/>

</head>

<body>
	
	<c:import url="/partes/topo.jsp" />
	
	<section class="cadastro">
		<div class="titulo-page">
			<h1><b>Cadastre-se no nosso sistema</b></h1>
			<p>Informando suas informações válidas!</p>
		</div>
		
		<div class="container">
			
			<div class="alert alert-danger" id="msgerro" role="alert" style="display: none;"></div>
						
		  	<div class="modal-content">
		      
		      <form onsubmit="usuarioController.cadastrar(event)" method="post">
			      <div class="modal-body">
			          <div class="form-group">
			            <label class="col-form-label">Nome:</label>
			            <input type="text" class="form-control" name="nome" required>
			          </div>
			          <div class="form-group">
			            <label class="col-form-label">CPF:</label>
			            <input type="text" class="form-control" name="cpf" data-mask="000.000.000-00">
			          </div> 
			          <div class="form-group">
			            <label class="col-form-label">Telefone:</label>
			            <input type="text" class="form-control" name="telefone" data-mask="(00) 0000-00000" required>
			          </div>
			          
			          <hr style="margin-top: 25px; background: #999"/>
			          
			          <div class="row justify-content-center">
				          <div class="col-10 col-sm-6">
					          <div class="form-group">
					            <label class="col-form-label">Login:</label>
					            <input type="text" class="form-control" name="login" required>
					          </div>
				          </div>
				          
				          <div class="col-10 col-sm-6">
					          <div class="form-group">
					            <label class="col-form-label">Senha:</label>
					            <input type="password" class="form-control" name="senha" required>
					          </div>
				          </div>
				      </div>
			      </div>
			      
			      <div class="modal-footer">
			        <button type="submit" class="btn btn-primary">Cadastrar</button>
			      </div>
		      </form>
		      
		    </div>
 		</div>
	
	</section>
	
	<c:import url="/partes/rodape.jsp" />
	
	<script src="../static/js/controllers/UsuarioController.js"></script>
	<script>
		let usuarioController = new UsuarioController();
	</script>

</body>
</html>
