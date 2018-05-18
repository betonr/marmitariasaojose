<div class="visPedido">

	<div class="modal-header">
		<h5 class="modal-title" style="color: red"><b>Confirme os pedidos de HOJE</b></h5>		 	
	 </div>	

	 <div class="modal-body">    
	    <table class="table table-hover" id="tabelaConfirmPedidos">
		  <thead>
		    <tr>
		      <th scope="col">DATA</th>
		      <th scope="col">DESCRI��O</th>
		      <th scope="col">SELECIONE O MOTOBOY</th>
		      <th scope="col">CONFIRMA��O</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<tr id="1">
		  		<td scope="row">22/05/2018</td>
		  		<td>
		  			1 feijoada(mini) - <br />
					8 fil�-frango(normal) - sem feij�o
				</td>
				<td>
					<select id="motoboy" class="form-control" required>
				     	<option value="" selected disabled>Selecione um motoboy</option>
				     	<option value="1"> Carlos Noronha </option>
				     	<option value="2"> Fabr�cio Souza </option>
				     </select>
				</td>
				<td>
					<button type="button" onClick="pedidoController.confirmaPedido('1')" class="btn btn-success"><span class="fa fa-check"></span></button>
					<button type="button" onClick="pedidoController.recusaPedido('1')" class="btn btn-danger"><span class="fa fa-close"></span></button>
				</td>
			</tr>
			<tr id="2">
		  		<td scope="row">22/05/2018</td>
		  		<td>
		  			2 feijoada(normal) - sem salada<br />
				</td>
				<td>
					<select id="motoboy" class="form-control" required>
				     	<option value="" selected disabled>Selecione um motoboy</option>
				     	<option value="1"> Carlos Noronha </option>
				     	<option value="2"> Fabr�cio Souza </option>
				     </select>
				</td>
				<td>
					<button type="button" onClick="pedidoController.confirmaPedido('2')" class="btn btn-success"><span class="fa fa-check"></span></button>
					<button type="button" onClick="pedidoController.recusaPedido('2')" class="btn btn-danger"><span class="fa fa-close"></span></button>
				</td>
			</tr>
		  </tbody>
		</table>
	 </div>
	
</div>


<script src="../static/js/controllers/PedidoController.js"></script>
<script>
	let pedidoController = new PedidoController();
</script>