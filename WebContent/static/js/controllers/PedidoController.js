class PedidoController {
	
	constructor(){
		this.pedidos = [];
		this.pedido = [];
		
		this.msg = "";
	}
	
	//PRODUTOS
	cadProduto(event) {
		event.preventDefault();
		
		let opcao = $("#opcao").val();
		let tamanho = $("#tamanho").val();
		let quantidade = $("#quantidade").val();
		let obs = $("#obs").val();
		
		let produto = { 
			opcao, tamanho, quantidade, obs
		}
		this.pedido.push(produto)
		
		this._renderizaLista()
		this._limpaForm()
	}
	
	delProduto(indiceProd) {
		this.pedido.splice(indiceProd, 1);
		this._renderizaLista();		
	}
	
	//PEDIDOS
	cadPedido(){
		if(this.pedido.length <= 0) {
			this._limpaMsg();
			this.msg = "Cadastre pelo menos UM produto/marmita!";
			$(".cadPedido #msgerro").append(`<span class='msg'>${this.msg}</span>`).fadeIn();	
			
		} else {
			this.pedidos.push({
				produtos: this.pedido,
				data: new Date(),
				status: 1
			})
			
			this.pedido = []
			this._renderizaLista()
			this._limpaForm()
			
			this._limpaMsg()		
			this.msg = "Pedido cadastrado com Sucesso!";
			$(".cadPedido #msgacerto").append(`<span class='msg'>${this.msg}</span>`).fadeIn();
		}
	}
	
	filtraPedido(event) {
		event.preventDefault();
		
		this._getPedidos();
	}
	
	_getPedidos(){
		
		let dataForm = $("#filtroDataPedido").val();
		let date = new Date(dataForm);
		let dataEsc = (date.getDate()+1)+"/"+(date.getMonth()+1)+"/"+date.getFullYear();
		
		this._limpaMsg();

		if(new Date(dataForm) <= new Date()) {
			let pedidos = []
			this.pedidos.map( pedido => {
				let dataPed = pedido.data.getDate()+"/"+(pedido.data.getMonth()+1)+"/"+pedido.data.getFullYear();
				
				if(dataPed == dataEsc) pedidos.push(pedido) 
			})
			
			if(pedidos.length <= 0){
				this.msg = "Não encontramos nenhum pedido com a data: "+dataEsc;
				$(".visPedido #msgerro").append(`<span class='msg'>${this.msg}</span>`).fadeIn();
			}
			
			this._renderizaPedidos(pedidos)
			
		} else {
			this.msg = "Selecione um data válida, até o dia de hoje!";
			$(".visPedido #msgerro").append(`<span class='msg'>${this.msg}</span>`).fadeIn();
		}
			
	}
	
	chegouPedido(indicePed) {
		this.pedidos[indicePed].status = 2;
		this._getPedidos();
	}
	
	confirmaPedido(indicePed) {		
		let motoboy = $('#tabelaConfirmPedidos tbody tr[id="'+indicePed+'"] select[id="motoboy"]').val()
		if(motoboy == null) alert('ERRO: é necessário selecionar um MOTOBOY');
		else {
			$('#tabelaConfirmPedidos tbody tr[id="'+indicePed+'"]').remove()			
			alert('produto '+indicePed+' acaba de ser confirmado')
		}		
		
	}
	
	recusaPedido(indicePed) {	
		if(confirm('Deseja realmente recusar esse pedido?') == true){
			$('#tabelaConfirmPedidos tbody tr[id="'+indicePed+'"]').remove()			
			alert('produto '+indicePed+' acaba de ser recusado')
		}
		
	}
	
	//INTERNAS
	_renderizaLista() {
		let tabelaResp = "";
		this.pedido.map( (produto, indice) => {
			tabelaResp += "<tr>";
			tabelaResp += `<td scope="row">${produto.opcao}</td>`;
			tabelaResp += `<td>${produto.tamanho}</td>`;
			tabelaResp += `<td style="text-align: center">${produto.quantidade}</td>`;
			tabelaResp += `<td>${produto.obs}</td>`;
			tabelaResp += `<td><button type="button" onClick="pedidoController.delProduto(${indice})" class="btn btn-danger" style="display: block; margin: 0 auto;"><span class="fa fa-close"></span></button></td>`;
			tabelaResp += "</tr>";
		})		
		
		$('#tabelaPedido tbody').html(tabelaResp);
		
		if(this.pedido.length > 0) $('#tabelaPedido').fadeIn();
		else $('#tabelaPedido').fadeOut();
	}
	
	_renderizaPedidos(pedidos) {
		let tabelaResp = "";
		
		pedidos.map( (pedido, indice) => {
			let data = pedido.data.getDate()+"/"+(pedido.data.getMonth()+1)+"/"+pedido.data.getFullYear();
			
			tabelaResp += "<tr>";
			tabelaResp += `<td scope="row">${data}</td>`;
			
			//descrição
			let descricao = ""
			pedido.produtos.map( produto => {
				descricao += produto.quantidade+" "+produto.opcao+"("+produto.tamanho+")"+" - "+produto.obs+"<br>";		
			})
			tabelaResp += `<td>${descricao}</td>`;
			
			//status - botões
			if(pedido.status == 0){
				tabelaResp += `<td>Aguardando confirmação ...</td>`;
				tabelaResp += `<td><button type="button" class="btn" disabled>SIM</button></td>`;
				
			} else if(pedido.status == 1) {
				tabelaResp += `<td><button type="button" onClick="mapController.verPosicao(${indice})" data-toggle="modal" data-target=".modal-mapa" class="btn btn-warning"><span class="fa fa-search"></span></button></td>`;
				tabelaResp += `<td><button type="button" onClick="pedidoController.chegouPedido(${indice})" class="btn btn-success">SIM</button></td>`;
				
			} else if(pedido.status == 2){
				tabelaResp += `<td>Pedido finalizado! </td>`;
				tabelaResp += `<td><button type="button" class="btn" disabled>SIM</button></td>`;
			}
			
			tabelaResp += "</tr>";
		})
		
		$('#tabelaPedidos tbody').html(tabelaResp);
		
		if(pedidos.length > 0) $('#tabelaPedidos').fadeIn();
		else $('#tabelaPedidos').fadeOut();
	}
	
	_limpaForm() {
		$("#opcao").val("");
		$("#tamanho").val("");
		$("#quantidade").val("");
		$("#obs").val("");
	}
	
	_limpaMsg() {
		this.msg = ""
			
		$(".cadPedido #msgerro .msg").remove();
		$(".cadPedido #msgacerto .msg").remove();
		
		$(".visPedido #msgacerto .msg").remove();
		$(".visPedido #msgerro .msg").remove();
		
		$(".cadPedido #msgerro").fadeOut();
		$(".cadPedido #msgacerto").fadeOut();
		
		$(".visPedido #msgacerto").fadeOut();
		$(".visPedido #msgerro").fadeOut();
		
	}
	
}