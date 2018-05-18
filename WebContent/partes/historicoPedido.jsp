<div class="visPedido">

	<div class="modal-header">
		<h5 class="modal-title"><b>Histórico de Pedidos</b></h5>
	  
		<form onsubmit="pedidoController.filtraPedido(event)" method="post">
	    	<div class="row justify-content-center">
			    <div class="col-8 col-sm-8">
			      <div class="form-group">
				     <input type="date" id="filtroDataPedido" class="form-control" required/>
				  </div>
			    </div>
		     
			    <div class="col-4 col-sm-4">
			    	<div class="form-group">
				    	<button type="submit" class="btn btn-warning">
					 		<span class="fa fa-search"> BUSCAR</span> 
					 	</button>
					 </div>
			    </div>	
		   	 </div>
	 	 </form>		 	
	 </div>	
	 
	 <div class="alert alert-danger" id="msgerro" role="alert" style="display: none; margin-top: 15px"></div>
	 <div class="alert alert-success" id="msgacerto" role="alert" style="display: none; margin-top: 15px"></div>
	 
	 <div class="modal-body">    
	    <table class="table table-hover" id="tabelaPedidos" style="display: none">
		  <thead>
		    <tr>
		      <th scope="col">DATA</th>
		      <th scope="col">DESCRIÇÃO</th>
		      <th scope="col">STATUS</th>
		    </tr>
		  </thead>
		  <tbody>
		  </tbody>
		</table>
	 </div>
	
</div>