<div class="minhasInfos">

	<form onsubmit="usuarioController.updateInfos(event)" method="post" class="formMinhasInfos">
		<div class="modal-header">
			<h5 class="modal-title"><b>Minhas Informações</b></h5>
		</div>
		
		<div class="modal-body">    
		    <div class="row justify-content-center">
			    <div class="col-10 col-sm-6">
			      <div class="form-group">
				     <label class="col-form-label">Nome Completo:</label>
				     <input type="text" class="form-control" name="nome" required>
				  </div>
			    </div>
		     
			    <div class="col-10 col-sm-6">
			      <div class="form-group">
			        <label class="col-form-label">CPF:</label>
			        <input type="text" class="form-control" name="cpf" data-mask="000.000.000-00">
			      </div>
		    	</div>
		 	</div>
		 	
		 	<div class="row justify-content-center">
			    <div class="col-10 col-sm-6">
			      <div class="form-group">
				     <label class="col-form-label">Telefone:</label>
				     <input type="text" class="form-control" name="telefone" data-mask="(00) 0000-00000" required>
				  </div>
			    </div>
		     
			    <div class="col-10 col-sm-6">
			      <div class="form-group">
			        <label class="col-form-label">Data de Registro:</label>
			        <input type="text" class="form-control" disabled>
			      </div>
		    	</div>
		 	</div>
		 </div>
		 
		 <div class="alert alert-success" id="msg" role="alert" style="display: none; margin-top: 15px"></div>
	 
		 <div class="modal-footer">
		   <button type="submit" class="btn btn-primary">Atualizar INFORMAÇÕES</button>
		 </div>
	</form>

</div>