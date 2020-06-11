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
    		$('#cmbRazaoSocial').append($('<option>').val('0').text('Selecione...'));
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
	if(document.getElementById("cmpCheckPrestador").checked){
		 jQuery('.tipo-prestador').attr('disabled', false);
		 jQuery('#cmbRazaoSocial').attr('disabled', false);
		 jQuery('#idParecerAcionamento').attr('disabled', false);
		 jQuery('#idParecerPagamento').attr('disabled', false);
		 jQuery('#idSolicitacaoPagamentoDespesasVeiculo').attr('disabled', false);
		 jQuery('#idSolicitacaoPagamentoPremioPendente').attr('disabled', false);
		 jQuery('#idSolicitacaoPagamentoGastosDespachante').attr('disabled', false);
		 jQuery('#idSolicitacaoPagamentoBeneficiario').attr('disabled', false);
		 jQuery('#idSolicitacaoPagamentoFinanciamentoCdc').attr('disabled', false);
		 jQuery('#idSolicitacaoPagamentoDia').attr('disabled', false);
		 jQuery('#cmbStatusAcionamento').attr('disabled', false);
		 jQuery('#dataInicioAcionamento').attr('disabled', false);
		 jQuery('#dataFimAcionamento').attr('disabled', false);
	}else{
		 jQuery('.tipo-prestador').attr('disabled', true);
		 jQuery('.tipo-prestador').prop("checked", false);
		 jQuery('#cmbRazaoSocial').attr('disabled', true);
		 jQuery('#idParecerAcionamento').attr('disabled', true);
		 jQuery('#idParecerAcionamento').prop("checked", false);
		 jQuery('#idParecerPagamento').attr('disabled', true);
		 jQuery('#idParecerPagamento').prop("checked", false);
		 jQuery('#idSolicitacaoPagamentoDespesasVeiculo').attr('disabled', true);
		 jQuery('#idSolicitacaoPagamentoDespesasVeiculo').prop("checked", false);
		 jQuery('#idSolicitacaoPagamentoPremioPendente').attr('disabled', true);
		 jQuery('#idSolicitacaoPagamentoPremioPendente').prop("checked", false);
		 jQuery('#idSolicitacaoPagamentoGastosDespachante').attr('disabled', true);
		 jQuery('#idSolicitacaoPagamentoGastosDespachante').prop('checked', false);
		 jQuery('#idSolicitacaoPagamentoBeneficiario').attr('disabled', true);
		 jQuery('#idSolicitacaoPagamentoBeneficiario').prop("checked", false);
		 jQuery('#idSolicitacaoPagamentoFinanciamentoCdc').attr('disabled', true);
		 jQuery('#idSolicitacaoPagamentoFinanciamentoCdc').prop('checked', false);
		 jQuery('#idSolicitacaoPagamentoDia').attr('disabled', true);
		 jQuery('#idSolicitacaoPagamentoDia').prop('checked', false);
		 jQuery('#cmbStatusAcionamento').attr('disabled', true);
		 jQuery('#dataInicioAcionamento').attr('disabled', true);
		 jQuery('#dataFimAcionamento').attr('disabled', true);
	}	    
}

function blocoTipoPrestadorPreenchido(){
	var tipoPrestador = jQuery("input[name='filtro.tipoPrestador']:checked").val();
	return ('1' == tipoPrestador || '2' == tipoPrestador);
}


function blocoParecerPreenchido(){
	var newsParecerAcionamento = $('#idParecerAcionamento').prop('checked');
	var newsParecerPagamento = $('#idParecerPagamento').prop('checked');
	return (newsParecerAcionamento || newsParecerPagamento);
}

function blocoSolicitacaoPagamentoPreenchido(){
	var alertaSolicitacaoPagamentoDespesasVeiculo = $('#idSolicitacaoPagamentoDespesasVeiculo').prop('checked');
	var alertaSolicitacaoPremioPendente = $('#idSolicitacaoPagamentoPremioPendente').prop('checked');
	var alertaSolicitacaoPagamentoGastosDespachante = $('#idSolicitacaoPagamentoGastosDespachante').prop('checked');
	var alertaSolicitacaoPagamentoBeneficiario = $('#idSolicitacaoPagamentoBeneficiario').prop('checked');
	var alertaSolicitacaoPagamentoFinanciamentoCdc = $('#idSolicitacaoPagamentoFinanciamentoCdc').prop('checked');
	var alertaSolicitacaoPagamentoDia = $('#idSolicitacaoPagamentoDia').prop('checked');
	
	return (alertaSolicitacaoPagamentoDespesasVeiculo || alertaSolicitacaoPremioPendente || alertaSolicitacaoPagamentoDia || alertaSolicitacaoPagamentoGastosDespachante || alertaSolicitacaoPagamentoBeneficiario || alertaSolicitacaoPagamentoFinanciamentoCdc);
}

function blocoAcionamentoPreenchido() {
	
	var statusAcionamento = $('#cmbStatusAcionamento').val();
	var periodoInicial = $('#dataInicioAcionamento').val();
	var periodoFinal = $('#dataFimAcionamento').val();
		    	
	return (statusAcionamento != 0 || periodoInicial != "" || periodoFinal != "");
}

function habilitaFuncionario(){
	 if($('#workflow').val() != ""){
	    $('#apoliceFuncionario').attr('disabled', false);
	 }else{
	    $('#apoliceFuncionario').attr('disabled', true);
	    $('#apoliceFuncionario').prop('checked', false);
	 }
}

function validaFormulario(){
	limpaMensagemErro();
	var workflow = $("#workflow option:selected").val();
	if(workflow == "EA"){
		if(filtroVazio()){
			desativaLoading();
			exibeMensagemErro(" É necessário fornecer pelo menos mais um filtro para a pesquisa!");
			
			return false;
		}
	}	
    var retorno = true;
    var mensagens = new Array();
    var i = 0;
    
	if($('#cmpCheckPrestador').prop('checked')){
		if(!blocoTipoPrestadorPreenchido()){
			mensagens[i++] = ' O tipo de prestador (Despachante/Reguladora) é obrigatório.';
			
			desativaLoading();
			retorno = false;
		}else{
			if(!blocoParecerPreenchido() && !blocoSolicitacaoPagamentoPreenchido() && !blocoAcionamentoPreenchido()){
				mensagens[i++] = ' É necessário preencher pelo menos um dos blocos: Pareceres, Solicitações de pagamento ou Acionamento.';
				
				desativaLoading();
				retorno = false;
			}

			if(blocoAcionamentoPreenchido()){
				var status = $('#cmbStatusAcionamento').val();
				if(status == "0"){
	    			mensagens[i++] = 'Status do acionamento é obrigatório.';
	    			
	    			desativaLoading();
					retorno = false;
	    		}
				var periodoInicial = $('#dataInicioAcionamento').val();
				var periodoFinal = $('#dataFimAcionamento').val();
				if(periodoInicial == "" || periodoFinal == ""){
					mensagens[i++] = ' Período do acionamento é obrigatório.';
					
					desativaLoading();
					retorno = false;
				}else{
					var diferencaDeDias =  DiffDate($('#dataInicioAcionamento').val(), $('#dataFimAcionamento').val());
		    		if(diferencaDeDias > 31){
		    			mensagens[i++] = ' O limite máximo de pesquisa para o período de acionamento é de 31 dias.';
		    			
		    			desativaLoading();
						retorno = false;
		    		}
				}
			}	
		}
	}
	
	if(!retorno){
		exibeListaMensagemErro(mensagens);
	}
	
	 return retorno;
}


/*ENVIA OS DADOS DO FORMULARIO PARA O CONTROLADOR*/
function preparaSubmit() {
	ativaLoading();
	limpaMensagemErro();
	if(validaFormulario()){
		$('#formConsultaSinistro').submit();
	}	
}

/*VERIFICA SE ALGUM CAMPO DO FORMULARIO ESTA PREENCHIDO.*/
function filtroVazio(){
	var retorno = true;
	var campos = $("*[id^='cmp'], *[id^='idSolicitacaoPagamento'], *[id^='idParecer']");
	
	for(n=0; n < campos.length; n++){
		if('text' == campos[n].type && !campos[n].disabled && campos[n].value.length > 0){
			retorno = false;
		}else if('checkbox' == campos[n].type && !campos[n].disabled && campos[n].checked){
			retorno = false;
		}else if('select-one' == campos[n].type && !campos[n].disabled && $("#" + campos[n].id + " option:selected").val().length > 0){
			return false;
		}else if('select-multiple' == campos[n].type && !campos[n].disabled && $("#" + campos[n].id + " :selected").length > 0){
			return false;
		}
	}
	return retorno;
}

