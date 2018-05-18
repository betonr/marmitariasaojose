class AutenticacaoController {
	
	contructor() {
		this.login = "";
		this.senha = "";
		
		this.msgerro = "";
	}
	
	autentica(event) {
		event.preventDefault();
		
		this.login = event.target.login.value;
		this.senha = event.target.senha.value;
		
		const vm = this
		$.getJSON("../external/usuarios.json", function(data) {
			let usuarios = data.usuarios;
	
			vm._limpaMsg()	
			let user = usuarios.filter( user => user.login == vm.login );
			
			if(user.length > 0){
				if(user[0].senha == vm.senha){
					window.location.href = `/marmitariasj/usuario/`;
					// ou redireciona para o painel de adm
					
				}else {
					this.msg = "Erro ao logar, SENHA incorreta!";
					$(".login #msgerro").append(`<span class='msg'>${this.msg}</span>`).fadeIn();
					
				}
				
			} else {			
				this.msg = "Erro ao logar, usuário não encontrado!";
				$(".login #msgerro").append(`<span class='msg'>${this.msg}</span>`).fadeIn();
				
			}
		})
	
	}
	
	_limpaMsg() {
		this.msg = ""

		$(".login #msgerro .msg").remove();
		$(".login #msgerro").fadeOut();
	}
	
}