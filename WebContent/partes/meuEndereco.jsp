<div class="meuEndereco">

	<form onsubmit="usuarioController.addEndereco(event)" method="post" class="formEndereco">
		<div class="modal-header">
			<h5 class="modal-title"><b>Meu endereço</b></h5>
		</div>
		<div class="modal-body">    
		    <div class="row justify-content-center">
			    <div class="col-10 col-sm-6">
			      <div class="form-group">
				     <label class="col-form-label">CEP:</label>
				     <input type="text" class="form-control" id="cep" name="cep" data-mask="00000-000">
				  </div>
			    </div>
		     
			    <div class="col-10 col-sm-6">
			      <div class="form-group">
			        <label class="col-form-label">Rua:</label>
			        <input type="text" class="form-control" name="rua" required>
			      </div>
		    	</div>
		 	</div>
		 	
		 	<div class="row justify-content-center">
			    <div class="col-10 col-sm-6">
			      <div class="form-group">
				     <label class="col-form-label">Número:</label>
				     <input type="number" class="form-control" name="numero" required>
				  </div>
			    </div>
		     
			    <div class="col-10 col-sm-6">
			      <div class="form-group">
			        <label class="col-form-label">Complemento:</label>
			        <input type="text" class="form-control" name="complemento">
			      </div>
		    	</div>
		 	</div>
		 	
		 	<div class="row justify-content-center">
			    <div class="col-10 col-sm-6">
			      <div class="form-group">
				     <label class="col-form-label">Bairro:</label>
				     <input type="text" class="form-control" name="bairro" required>
				  </div>
			    </div>
		     
			    <div class="col-10 col-sm-6">
			      <div class="form-group">
			        <label class="col-form-label">Cidade:</label>
			        <input type="text" class="form-control" name="cidade" required>
			      </div>
		    	</div>
		 	</div>
		</div>
	 	
	 	<div class="alert alert-success" id="msg" role="alert" style="display: none; margin-top: 15px"></div>
	 	
		 <div class="modal-footer">
		   <button type="submit" class="btn btn-warning">Atualizar ENDEREÇO</button>
		 </div>
	</form>

</div>

<script src="../static/js/getCEP.js"></script>