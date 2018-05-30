var inputCep = document.getElementById("cep");

function getInfos(cep){
	
	var url = 'https://viacep.com.br/ws/' + cep + '/json/';
	
	return $.get(url, function(data) {

        if (!("erro" in data)) {
        
        	$('input[name="rua"]').val(data.logradouro);
        	$('input[name="bairro"]').val(data.bairro);
        	$('input[name="cidade"]').val(data.localidade);
        	
        } else {
          alert("CEP não encontrado.");
        }
    })
}

inputCep.addEventListener('blur', function(e) {

	  var cep = e.target.value.replace(/\D/g, '');
	
	  if (cep !== "") {
		  getInfos(cep)    	    
	  }
  
});