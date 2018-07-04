<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="cadPedido">

	<form onsubmit="pedidoController.cadProduto(event)" method="post" class="FormCadProduto">
	
		<div class="alert alert-danger" id="msgerro" role="alert" style="display: none; margin-top: 15px"></div>
		<div class="alert alert-success" id="msgacerto" role="alert" style="display: none; margin-top: 15px"></div>
		
		<div class="modal-header">
			<h5 class="modal-title"><b>Faça seu Pedido</b></h5>
		</div>
		
		<div class="modal-body">    
			<table id="tabelaPedido" class="table table-bordered table-hover" style="display:none">
			  <thead>
			    <tr>
			      <th scope="col">OPÇÃO</th>
			      <th scope="col">TAMANHO</th>
			      <th scope="col">QUANT</th>
			      <th scope="col">OBS</th>
			      <th scope="col">EXCLUIR</th>
			    </tr>
			  </thead>
			  
			  <tbody>
			  </tbody>
			</table>
			
			<br/> 
			<c:out value="${param.title}"/>
		    <div class="row justify-content-center">
			    <div class="col-6 col-sm-3">
			      <div class="form-group">
				     <label class="col-form-label">Opções:</label>
				     <select id="opcao" class="form-control" required>
				     	<option value="" selected disabled>Selecione uma Opção</option>
						<c:forEach items="${produtos}" var="produto">
			    			<option value="${produto.getNumero_opcao()}">${produto.getTitulo()}</option>
						</c:forEach>     	
				     </select>
				  </div>
			    </div>
		     
			    <div class="col-6 col-sm-3">
			      <div class="form-group">
				     <label class="col-form-label">Tamanho:</label>
				     <select id="tamanho" class="form-control" required>
				     	<option value="" selected disabled>Selecione um Tamanho</option>
				     	<c:forEach items="${tamanhos}" var="tamanho">
			    			<option value="${tamanho.getId()}">${tamanho.getDescricao()}</option>
						</c:forEach>
				     </select>
				  </div>
			    </div>
			    
			    <div class="col-6 col-sm-2">
			      <div class="form-group">
				    <label class="col-form-label">Quantidade:</label>
				    <input type="number" id="quantidade" min="1" class="form-control" required />
				  </div>
			    </div>
			    
			    <div class="col-6 col-sm-4">
			      <div class="form-group">
				     <label class="col-form-label">Observação:</label>
				     <textarea id="obs" class="form-control" rows="1"></textarea>
				  </div>
			    </div>
		 	</div>
		 	
		 	<button type="submit" class="btn btn-success">
		 		<span class="fa fa-plus"> PRODUTO</span> 
		 	</button>
		 </div>
	 
		 <div class="modal-footer">
		   <button type="button" class="btn btn-primary" onClick="pedidoController.cadPedido()">FINALIZAR PEDIDO</button>
		 </div>
	</form>
	
</div>