$(document).ready(function () {
	$("html, body").animate({ scrollTop: $('.resultado-filtro').offset().top }, 500);
    size_tab = $("#tabelaProcesso tr").length;
    x= 100;
    $('#tabelaProcesso tr:lt('+x+')').show();
   	$('#btn-load-less').hide();
    $('#btn-load-more').click(function () {
        x= (x+100 <= size_tab) ? x+100 : size_tab;
        $('#tabelaProcesso tr:lt('+x+')').show();
        $('html, body').animate({
            scrollTop: $('#btn-load-more').offset().top
         }, 2000);
        if(x == size_tab){
        	 $('#btn-load-more').hide();
        }
    });
    
    var qtdSelecionados = 0;
    
    $('#selecionaTodos').click(function () {
        $('[id*="cbListaPos"]').prop('checked', this.checked);
        qtdSelecionados = document.querySelectorAll('input[name=listaPosicao]:checked').length;
        $("#qtdSelecionados").html(qtdSelecionados);
    });

    $('.selectedId').change(function () {
        var check = ($('.selectedId').filter(":checked").length == $('.selectedId').length);
        $('#selecionaTodos').prop("checked", check);
        qtdSelecionados = document.querySelectorAll('input[name=listaPosicao]:checked').length;
        $("#qtdSelecionados").html(qtdSelecionados);
    });
    
});



/*ALTERACAO GRID*/
function showModalAlteracao(){
	$('#apoliceAlteracao').val($(this).data('numeroSinistro'));
	$('#modalAlteracaoProcesso').modal('show');
}


/*LIBERAR NEWS*/
function telaLiberarNews(){
	
	
	$("#quantidadeSelecionada").html($("#formListaConsulta").length);
	$('#modalLiberarNews').modal('show');
	
}

function liberarNews(){
	$("#formListaConsulta").attr('action', "liberarNews.do");
	$("#formListaConsulta").submit();
	ativaLoading();
}

  
/*MODAL GRPS*/
function telaCapaAnexo(){

		$('#modalGRPS').modal('show'); 

}

$(document).ready(function(){
	$('#gerarGuia').click(function(){
		if(validarCampos()){
			gerarGuiaSinistro();
		}
	});
});

function gerarGuiaSinistro(){
	$('#form-capa-guia-sinistro').submit();
}

function validarCampos(){
	var departamento = $('#departamento').val();
	var observacoes  = $('#observacoes').val();
	var listaMsg = new Array();
	if($.trim(departamento) == '' || $.trim(observacoes) == ''){
		listaMsg.push('Preencha os campos obrigat\u00F3rios');
		alert(listaMsg);
		return false;
	} 
	return true;
}

