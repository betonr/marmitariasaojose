<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Marmitaria SÃO JOSÉ - Login</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="../static/plugins/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="../static/css/login.css" rel="stylesheet" type="text/css"/>
<link href="../static/css/layout.css" rel="stylesheet" type="text/css"/>

</head>

<body>
	
	<c:import url="/partes/topo.jsp" />
	
	<section class="login">
		<div class="container">
		
			<div class="alert alert-danger" id="msgerro" role="alert" style="display: none;"></div>
					
		  	<div class="modal-content">
		  	
		  	  <div class="modal-header">
        		 <h5 class="modal-title">Realize seu Login</h5>
      		  </div>
		      
		      <form onsubmit="autenticacaoController.autentica(event)" method="post">
			      <div class="modal-body">
			          <div class="form-group">
			            <label class="col-form-label">Login:</label>
			            <input type="text" class="form-control" name="login" required>
			          </div>
			          <div class="form-group">
			            <label class="col-form-label">Senha:</label>
			            <input type="password" class="form-control" name="senha" required>
			          </div> 
			          
			      </div>
			      
			      <div class="modal-footer">
			      	<a href="/marmitariasj/public/cadastro" class="btn btn-default">cadastre agora mesmo</a>
			        <button type="submit" class="btn btn-primary">Logar</button>
			      </div>
		      </form>
		      
		    </div>
 		</div>
	
	</section>
	
	<c:import url="/partes/rodape.jsp" />
	
	<script src="../static/js/controllers/AutenticacaoController.js"></script>
	<script>
		let autenticacaoController = new AutenticacaoController();
	</script>

</body>
</html>