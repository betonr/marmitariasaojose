var inputCep = document.getElementById("cep");

inputCep.addEventListener('blur', function(e) {

	  var cep = $('#cep').val().replace(/\D/g, '');
	
	  if (cep !== "") {
	
	    var url = 'https://viacep.com.br/ws/' + cep + '/json/';
	    
	    $.get(url, function(data) {

	        if (!("erro" in data)) {
	        
	        	$('input[name="rua"]').val(data.logradouro);
	        	$('input[name="bairro"]').val(data.bairro);
	        	$('input[name="cidade"]').val(data.localidade);
	        	
	        } else {
	          alert("CEP não encontrado.");
	        }
	    });
	    
	  }
  
});