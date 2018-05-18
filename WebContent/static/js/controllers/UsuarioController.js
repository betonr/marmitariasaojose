class UsuarioController {
	
	contructor() {
		this.name = "";
		this.cpf = "";
		this.telefone = "";
		this.login = "";
		this.senha = "";
		
		this.msg = "";
	}
	
	cadastrar(event) {
		event.preventDefault();
		
		this.name = event.target.nome.value;
		this.cpf = event.target.cpf.value;
		this.telefone = event.target.telefone.value;
		this.login = event.target.login.value;
		this.senha = event.target.senha.value;
		
		const vm = this
		$.getJSON("../external/usuarios.json", function(data) {
			let usuarios = data.usuarios;
			let user = usuarios.filter( user => (user.login == vm.login) || (user.cpf != "" && user.cpf == vm.cpf) );
			
			$(".cadastro #msgerro .msg").remove();
			
			if(user.length <= 0){
				this.msgerro = "";
				window.location.href = `/marmitariasj/usuario/`;
				
			} else {
				this.msg = "Erro ao cadastrar, 'login' ou 'cpf' já está em uso no nosso sistema!";
				$(".cadastro #msgerro").append(`<span class='msg'>${this.msgerro}</span>`).fadeIn();
				
			}
		});
	
	}
	
	addEndereco(event) {
		event.preventDefault();
		
		let endereco = {
			cep: event.target.cep.value,
			logradouro: event.target.rua.value,
			numero: event.target.numero.value,
			complemento: event.target.complemento.value,
			bairro: event.target.bairro.value,
			cidade: event.target.cidade.value
		}
		
		//put para back
		$(".meuEndereco #msg .msg").remove();
		
		this.msg = "Endereço alterado com sucesso!"		
		$(".meuEndereco #msg").append(`<span class='msg'>${this.msg}</span>`).fadeIn();
	}
	
	updateInfos(event) {
		event.preventDefault();
		
		this.name = event.target.nome.value;
		this.cpf = event.target.cpf.value;
		this.telefone = event.target.telefone.value;
		
		//put para back
		$(".minhasInfos #msg .msg").remove();
		
		this.msg = "Informações alteradas com sucesso!"		
		$(".minhasInfos #msg").append(`<span class='msg'>${this.msg}</span>`).fadeIn();
	}
	
}