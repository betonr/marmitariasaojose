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
		this._limpaMsg() 
		$.ajax({
            url: '/marmitariasj/public/login',
            type: 'post',
            dataType: 'json',
            contentType: 'application/json;charset=UTF-8',
            success: function (data) {
                if(data.status==true) {
                	window.location.href = `/marmitariasj/usuario/`;
                } else {
                	vm.msg = "Erro ao logar, "+data.msg+"!";
    				$(".login #msgerro").append(`<span class='msg'>${vm.msg}</span>`).fadeIn();
                }
            },
            error: function (error) {
            	console.log(error)
            },
            data: JSON.stringify({
	            	login: vm.login,
	            	senha: vm.senha
	        })
        });
	
	}
	
	_limpaMsg() {
		this.msg = ""

		$(".login #msgerro .msg").remove();
		$(".login #msgerro").fadeOut();
	}
	
}