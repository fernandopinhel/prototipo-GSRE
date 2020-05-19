$('[data-tooltip="tooltip"]').tooltip();

$('input[placeholder]').on('paste', function(){
    $(this).val(' ');
});

function ativaLoading(){
	$('#dv-loading').show();
}

function desativaLoading(){
	$('#dv-loading').hide();
}

function exibeMensagemErro(msgErro){
	var strHTML = '<div class="alert alert-danger alert-dismissible fade show" role="alert" id="msgErros">' +
				  ' <i class="fa fa-times" aria-hidden="true"></i>' +	
				  	 	msgErro +
				  '<button type="button" class="close" data-dismiss="alert" aria-label="Close">'+
				  '<span aria-hidden="true">&times;</span>'+
				  '</button>' +
				  '</div>';				 
	jQuery('#dvMsgError').html(strHTML);
}

function exibeListaMensagemErro(listaErro){
	for(i=0; i < listaErro.length; i++){
		if(undefined != listaErro[i]){
			strHTML = '<div class="alert alert-danger alert-dismissible fade show" role="alert" id="msgErros">' +
			 			' <i class="fa fa-times" aria-hidden="true"></i>' +
						listaErro[i] + 
						'<button type="button" class="close" data-dismiss="alert" aria-label="Close">'+
						'<span aria-hidden="true">&times;</span>'+
						'</button>' +
						'</div>';	
		}
	}
	jQuery('#dvMsgError').html(strHTML);
}

function exibeListaMensagemValidacao(lista){
	for(i=0; i < lista.length; i++){
		if(undefined != lista[i]){
			strHTML = '<div class="alert alert-warning alert-dismissible fade show" role="alert" id="msgFieldAlertas">' +
			 			' <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>' +
						lista[i] + 
						'<button type="button" class="close" data-dismiss="alert" aria-label="Close">'+
						'<span aria-hidden="true">&times;</span>'+
						'</button>' +
						'</div>';	
		}
	}
	jQuery('#dvMsgError').html(strHTML);
}


//Limpa mensagem de erro.
function limpaMensagemErro( ){			 
	jQuery('#dvMsgError').html(' ');
	jQuery('#dvMsgFieldAlertas').html(' ');
}



function isNumberKey(evt)
{
	var charCode = (evt.which) ? evt.which : evt.keyCode;
	if (charCode != 46 && charCode > 31 
	&& (charCode < 48 || charCode > 57))
	return false;
	return true;
}  


function isNumericKey(evt)
{
	var charCode = (evt.which) ? evt.which : evt.keyCode;
	if (charCode != 46 && charCode > 31 
	&& (charCode < 48 || charCode > 57))
	return true;
	return false;
} 



jQuery(function($){
    $(".cpf").mask("999.999.999-99");
    $(".tel").mask("(999) 99999-9999");
    $(".date").mask("99/99/9999");
    $(".chaveApol").mask("999.999999.9999");
    $(".dedocProc").mask("99999999-99");
    $(".placa").mask("aaa-9*99");
});
