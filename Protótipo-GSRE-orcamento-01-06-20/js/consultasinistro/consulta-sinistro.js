/*MINIMIZAR E EXPANDIR OS ACCORDIONS DO FILTRO*/

function toggleFunctionProcesso(x) {
    x.classList.toggle("change");
}

function toggleFunctionNews(x) {
    x.classList.toggle("change");
}

function toggleFunctionOcorrencia(x) {
    x.classList.toggle("change");
}

function toggleFunctionPrestador(x) {
    x.classList.toggle("change");
}

function toggleThis(x) {
    x.classList.toggle("change");
}

/*HABILITAR E DESABILITAR OS CHECKBOXES DO ACCORDION NEWS*/

function trataNewsOrcamento(){
	if($('#cmpNewsOrcamento').is(':checked')) {
		$("#cmpNewsNotaFiscais").prop("checked", false).attr('disabled', true);
		$("#cmpNewsNovosDocumentos").prop("checked", false).attr('disabled', true);
		$("#cmpNewsParecer").prop("checked", false).attr('disabled', true);
		$("#cmpNewsProvidenciaTomar").prop("checked", false).attr('disabled', true);
		$("#cmpNewsMensagem").prop("checked", false).attr('disabled', true);
		$("#cmpNewsSupervisor").prop("checked", false).attr('disabled', true);
		$("#cmpNewsAnalista").prop("checked", false).attr('disabled', true);
		$("#cmpNewsAse").prop("checked", false).attr('disabled', true);
		$("#cmpNewsDespachante").prop("checked", false).attr('disabled', true);
		$("#cmpNewsParalelismo").prop("checked", false).attr('disabled', true);
		$("#pnlOrcamentosNaoAutorizados").show();
	} else {
		$("#cmpNewsOrcamento").attr('disabled', false);
		$("#cmpNewsNotaFiscais").attr('disabled', false);
		$("#cmpNewsNovosDocumentos").attr('disabled', false);
		$("#cmpNewsParecer").attr('disabled', false);
		$("#cmpNewsProvidenciaTomar").attr('disabled', false);
		$("#cmpNewsMensagem").attr('disabled', false);
		$("#cmpNewsSupervisor").attr('disabled', false);
		$("#cmpNewsAnalista").attr('disabled', false);
		$("#cmpNewsAse").attr('disabled', false);
		$("#cmpNewsDespachante").attr('disabled', false);
		$("#cmpNewsParalelismo").attr('disabled', false);
		$("#pnlOrcamentosNaoAutorizados").hide();
	}
}	

function trataNewsNotaFiscais(){
	if($('#cmpNewsNotaFiscais').is(':checked')) {
		$("#cmpNewsOrcamento").prop("checked", false).attr('disabled', true);
		$("#cmpNewsNovosDocumentos").prop("checked", false).attr('disabled', true);
		$("#cmpNewsParecer").prop("checked", false).attr('disabled', true);
		$("#cmpNewsProvidenciaTomar").prop("checked", false).attr('disabled', true);
		$("#cmpNewsMensagem").prop("checked", false).attr('disabled', true);
		$("#cmpNewsSupervisor").prop("checked", false).attr('disabled', true);
		$("#cmpNewsAnalista").prop("checked", false).attr('disabled', true);
		$("#cmpNewsAse").prop("checked", false).attr('disabled', true);
		$("#cmpNewsDespachante").prop("checked", false).attr('disabled', true);
		$("#cmpNewsParalelismo").prop("checked", false).attr('disabled', true);
		$("#pnlVencimentoNF").show();
	}else{
		$("#cmpNewsOrcamento").attr('disabled', false);
		$("#cmpNewsNotaFiscais").attr('disabled', false);
		$("#cmpNewsNovosDocumentos").attr('disabled', false);
		$("#cmpNewsParecer").attr('disabled', false);
		$("#cmpNewsProvidenciaTomar").attr('disabled', false);
		$("#cmpNewsMensagem").attr('disabled', false);
		$("#cmpNewsSupervisor").attr('disabled', false);
		$("#cmpNewsAnalista").attr('disabled', false);
		$("#cmpNewsAse").attr('disabled', false);
		$("#cmpNewsDespachante").attr('disabled', false);
		$("#cmpNewsParalelismo").attr('disabled', false);
		$("#pnlVencimentoNF").hide();
	}	
}

function trataNewsMensagem(){
	if($('#cmpNewsMensagem').is(':checked')) {
		$("#cmpNewsOrcamento").prop("checked", false).attr('disabled', true);
		$("#cmpNewsNotaFiscais").prop("checked", false).attr('disabled', true);
		$("#cmpNewsNovosDocumentos").prop("checked", false).attr('disabled', true);
		$("#cmpNewsParecer").prop("checked", false).attr('disabled', true);
		$("#cmpNewsProvidenciaTomar").prop("checked", false).attr('disabled', true);
		$("#cmpNewsSupervisor").prop("checked", false).attr('disabled', true);
		$("#cmpNewsAnalista").prop("checked", false).attr('disabled', true);
		$("#cmpNewsAse").prop("checked", false).attr('disabled', true);
		$("#cmpNewsDespachante").prop("checked", false).attr('disabled', true);
		$("#cmpNewsParalelismo").prop("checked", false).attr('disabled', true);
	} else {
		$("#cmpNewsOrcamento").attr('disabled', false);
		$("#cmpNewsNotaFiscais").attr('disabled', false);
		$("#cmpNewsNovosDocumentos").attr('disabled', false);
		$("#cmpNewsParecer").attr('disabled', false);
		$("#cmpNewsProvidenciaTomar").attr('disabled', false);
		$("#cmpNewsMensagem").attr('disabled', false);
		$("#cmpNewsSupervisor").attr('disabled', false);
		$("#cmpNewsAnalista").attr('disabled', false);
		$("#cmpNewsAse").attr('disabled', false);
		$("#cmpNewsDespachante").attr('disabled', false);
		$("#cmpNewsParalelismo").attr('disabled', false);
	}
}	

function trataNewsSupervisor(){
	if($('#cmpNewsSupervisor').is(':checked')) {
		$("#cmpNewsOrcamento").prop("checked", false).attr('disabled', true);
		$("#cmpNewsNotaFiscais").prop("checked", false).attr('disabled', true);
		$("#cmpNewsNovosDocumentos").prop("checked", false).attr('disabled', true);
		$("#cmpNewsParecer").prop("checked", false).attr('disabled', true);
		$("#cmpNewsProvidenciaTomar").prop("checked", false).attr('disabled', true);
		$("#cmpNewsMensagem").prop("checked", false).attr('disabled', true);
		$("#cmpNewsAnalista").prop("checked", false).attr('disabled', true);
		$("#cmpNewsAse").prop("checked", false).attr('disabled', true);
		$("#cmpNewsDespachante").prop("checked", false).attr('disabled', true);
		$("#cmpNewsParalelismo").prop("checked", false).attr('disabled', true);
	} else {
		$("#cmpNewsOrcamento").attr('disabled', false);
		$("#cmpNewsNotaFiscais").attr('disabled', false);
		$("#cmpNewsNovosDocumentos").attr('disabled', false);
		$("#cmpNewsParecer").attr('disabled', false);
		$("#cmpNewsProvidenciaTomar").attr('disabled', false);
		$("#cmpNewsMensagem").attr('disabled', false);
		$("#cmpNewsSupervisor").attr('disabled', false);
		$("#cmpNewsAnalista").attr('disabled', false);
		$("#cmpNewsAse").attr('disabled', false);
		$("#cmpNewsDespachante").attr('disabled', false);
		$("#cmpNewsParalelismo").attr('disabled', false);			    
	}
}	

function trataNewsAnalista(){
	if($('#cmpNewsAnalista').is(':checked')) {
		$("#cmpNewsOrcamento").prop("checked", false).attr('disabled', true);
		$("#cmpNewsNotaFiscais").prop("checked", false).attr('disabled', true);
		$("#cmpNewsNovosDocumentos").prop("checked", false).attr('disabled', true);
		$("#cmpNewsParecer").prop("checked", false).attr('disabled', true);
		$("#cmpNewsProvidenciaTomar").prop("checked", false).attr('disabled', true);
		$("#cmpNewsMensagem").prop("checked", false).attr('disabled', true);
		$("#cmpNewsSupervisor").prop("checked", false).attr('disabled', true);
		$("#cmpNewsAse").prop("checked", false).attr('disabled', true);
		$("#cmpNewsDespachante").prop("checked", false).attr('disabled', true);
		$("#cmpNewsParalelismo").prop("checked", false).attr('disabled', true);
	    
	} else {
		$("#cmpNewsOrcamento").attr('disabled', false);
		$("#cmpNewsNotaFiscais").attr('disabled', false);
		$("#cmpNewsNovosDocumentos").attr('disabled', false);
		$("#cmpNewsParecer").attr('disabled', false);
		$("#cmpNewsProvidenciaTomar").attr('disabled', false);
		$("#cmpNewsMensagem").attr('disabled', false);
		$("#cmpNewsSupervisor").attr('disabled', false);
		$("#cmpNewsAnalista").attr('disabled', false);
		$("#cmpNewsAse").attr('disabled', false);
		$("#cmpNewsDespachante").attr('disabled', false);
		$("#cmpNewsParalelismo").attr('disabled', false);		
	}
}

function trataNewsAse(){
	if($('#cmpNewsAse').is(':checked')) {
		$("#cmpNewsOrcamento").prop("checked", false).attr('disabled', true);
		$("#cmpNewsNotaFiscais").prop("checked", false).attr('disabled', true);
		$("#cmpNewsNovosDocumentos").prop("checked", false).attr('disabled', true);
		$("#cmpNewsParecer").prop("checked", false).attr('disabled', true);
		$("#cmpNewsProvidenciaTomar").prop("checked", false).attr('disabled', true);
		$("#cmpNewsMensagem").prop("checked", false).attr('disabled', true);
		$("#cmpNewsSupervisor").prop("checked", false).attr('disabled', true);
		$("#cmpNewsAnalista").prop("checked", false).attr('disabled', true);
		$("#cmpNewsDespachante").prop("checked", false).attr('disabled', true);
		$("#cmpNewsParalelismo").prop("checked", false).attr('disabled', true);
	} else {
		$("#cmpNewsOrcamento").attr('disabled', false);
		$("#cmpNewsNotaFiscais").attr('disabled', false);
		$("#cmpNewsNovosDocumentos").attr('disabled', false);
		$("#cmpNewsParecer").attr('disabled', false);
		$("#cmpNewsProvidenciaTomar").attr('disabled', false);
		$("#cmpNewsMensagem").attr('disabled', false);
		$("#cmpNewsSupervisor").attr('disabled', false);
		$("#cmpNewsAnalista").attr('disabled', false);
		$("#cmpNewsAse").attr('disabled', false);
		$("#cmpNewsDespachante").attr('disabled', false);
		$("#cmpNewsParalelismo").attr('disabled', false);	
	}
}

function trataNewsVistoriaPrioritaria(){
	if($('#idVistoriaPrioritaria').is(':checked')){
	    $("#idAbaixoFranquiaDnc").attr('disabled', true);
	} else {
		$("#idAbaixoFranquiaDnc").attr('disabled', false);
	}
}

function trataNewsFranquiaDnc(){
	if($('#idAbaixoFranquiaDnc').is(':checked')){
	    $("#rdVistoriaPrioritaria").attr('disabled', true);
	} else {
		$("#rdVistoriaPrioritaria").attr('disabled', false);
	}
}

/*POPULAR A COMBO POSICAO ATUAL PROCESSO DO ACCORDION PROCESSO*/
function listaPosicaoAtualProcesso(){
	if($('#inputProcessoAtual option').size() < 1 ){
		$.ajax({
        	dataType: 'json',
        	contentType: "application/x-www-form-urlencoded;charset=utf-8",	  		
        	cache:'false',   
        	type: "POST",
        	url: "listaPosicaoAtualFiltroGenericoAjax.do",
        	data:{},
        	success: function(combo){
        				$("#inputProcessoAtual").removeOption(/./);            	
        				for(i=0;i<combo.length;i++){
                    		$("#inputProcessoAtual").addOption(combo[i].value, combo[i].label); 
                    	}         								
    		},
        	error: function(){
                	alert('erro no servidor');
            	}
       	 });
	}
}


/*POPULAR A COMBO PRESTADORES DO ACCORDION PRESTADOR*/
function carregaComboPrestadores(codigoTipoPrestador){
	ativaLoading();
	$('#cmbRazaoSocial').find('option').remove();
	$.ajax({
    	dataType: 'json',
    	contentType: "application/x-www-form-urlencoded;charset=utf-8",	  		
		cache:'false',   
    	type: "POST",
    	url: "listaPrestadoresAjax.do",
    	data:{codGrupo:codigoTipoPrestador},
    	success: function(combo){
			$.each(combo, function(index, element){
				$('#cmbRazaoSocial').append($('<option>').val(element.value).text(element.label)); 
			});
			desativaLoading();
        },
    	error: function(){
        	alert('erro no servidor');
        	desativaLoading();
    	}
   	 });
	
}

/*HABILITA CAMPOS FILTRO PRESTADOR SE O CHECKBOX PRESTADOR ESTIVER ATIVO, SE ESTIVER INATIVO ELE DESABILITA OS CAMPOS PARA PREENCHIMENTO*/
function habilitarPrestador() {
	if(document.getElementById("checkPrestador").checked){
		 jQuery('#grupoPrestador').attr('disabled', false);
		 jQuery('#cmbRazaoSocial').attr('disabled', false);
		 jQuery('#cmpAcionamento').attr('disabled', false);
		 jQuery('#cmpPagamento').attr('disabled', false);
		 jQuery('#cmbStatusAcionamento').attr('disabled', false);
		 jQuery('#dataInicioAcionamento').attr('disabled', false);
		 jQuery('#dataFimAcionamento').attr('disabled', false);
	}else{
		 jQuery('#grupoPrestador').attr('disabled', true);
		 jQuery('#cmbRazaoSocial').attr('disabled', true);
		 jQuery('#cmpAcionamento').attr('disabled', true);
		 jQuery('#cmpPagamento').attr('disabled', true);
		 jQuery('#cmbStatusAcionamento').attr('disabled', true);
		 jQuery('#dataInicioAcionamento').attr('disabled', true);
		 jQuery('#dataFimAcionamento').attr('disabled', true);
	}	    
}

/*ENVIA OS DADOS DO FORMULARIO PARA O CONTROLADOR*/
function preparaSubmit() {
	ativaLoading();
	limpaMensagemErro();
	if(filtroVazio()){
		desativaLoading();
		exibeMensagemErro(" É necessário fornecer pelo menos um filtro para a pesquisa!");
		$("html, body").animate({ scrollTop: 0 }, "slow");
	}else{
		$('#formConsultaSinistro').submit();
	}
}

/*VERIFICA SE ALGUM CAMPO DO FORMULARIO ESTA PREENCHIDO.*/
function filtroVazio(){
	var retorno = true;
	var campos = $("*[id^='cmp']");
	
	for(n=0; n < campos.length; n++){
		if('text' == campos[n].type && !campos[n].disabled && campos[n].value.length > 0){
			retorno = false;
		}else if('checkbox' == campos[n].type && !campos[n].disabled && campos[n].checked){
			retorno = false;
		}
	}
	if($("#campUf").val() != ""){
		retorno = false;
	}
	return retorno;
}

