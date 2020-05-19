<%@ page language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
	<title>
		<decorator:title default="Sinistro Auto"/>
	</title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<link rel="shortcut icon" type="image/x-icon" href="<s:url value='/includes/img/favicon.ico'/>" />
	
	<!-- Ebix styles -->
	<link rel="stylesheet" type="text/css" href="<s:url value='/includes/css/bootstrap/bootstrap.css'/>" />
	<link rel="stylesheet" type="text/css" href="<s:url value='/includes/css/bootstrap/bootstrap.min.css'/>" />
	<link rel="stylesheet" type="text/css" href="<s:url value='/includes/css/fontawesome/font-awesome.min.css'/>" />
	<link rel="stylesheet" type="text/css" href="<s:url value='/includes/css/bootstrap/bootstrap-select.css'/>" />
	<link rel="stylesheet" type="text/css" href="<s:url value='/includes/css/estilo.css'/>" />
	<link rel="stylesheet" type="text/css" href="<s:url value='/includes/css/sweetalert2/sweetalert2.css'/>" />
	
    
    <!-- Bradesco styles -->
    <link rel="stylesheet" type="text/css" href="<s:url value='/includes/css/bradseg_icons.css'/>" />
    
    
<!-- External plugins -->
	<script type="text/javascript" src="<s:url value='/includes/js/jquery-3.3.1.slim.min.js'/>"></script>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="<s:url value='/includes/js/popper.min.js'/>"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js"></script>
	<script type="text/javascript" src="<s:url value='/includes/js/bootstrap/bootstrap.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='/includes/js/jquery.maskedinput.js'/>"></script>
	
	
    <!-- configs js -->
    <script type="text/javascript" src="<s:url value='/includes/js/comum/comum.js'/>" charset="utf-8"></script>
    <script type="text/javascript" src="<s:url value='/includes/js/config.js'/>"></script>
    <script type="text/javascript" src="<s:url value='/includes/js/sweetalert2/sweetalert2.js'/>"></script>
    

    <!-- Script Datepicker-->
    <script type="text/javascript" src="<s:url value='/includes/js/bootstrap/bootstrap-datetimepicker.js'/>"></script>
    <script type="text/javascript" src="<s:url value='/includes/js/bootstrap/bootstrap-select.js'/>"></script>
    
    
    <script type="text/javascript" src="<s:url value='/includes/js/consultasinistro/consulta-sinistro.js'/>" charset="utf-8"></script>
    <script type="text/javascript" src="<s:url value='/includes/js/moment/moment.min.js'/>"></script>
    <script type="text/javascript" src="<s:url value='/includes/js/moment/moment-with-locales.js'/>"></script>
	
	<s:url var="baseURL" value="/"/>
	<script>window.baseURL = "${baseURL}";</script>
	
	<decorator:head />
</head>
<%@ include file="/WEB-INF/pages/menu.jsp"%>

<body>
<section class="consulta">
<div class="container">
		<div id="dv-loading"></div>
	<s:if test="hasFieldErrors()">
		<div class="alert alert-warning alert-dismissible fade show dvMsg" role="alert" id="dvMsgError">
			<i class="fa fa-times" aria-hidden="true"></i>
			<s:iterator value="fieldErrors">
				<s:property />
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</s:iterator>
	
		</div>
	</s:if>
	<s:if test="hasActionErrors()">
		<div class="alert alert-danger alert-dismissible fade show dvMsg" role="alert" id="dvMsgError">
			<i class="fa fa-times" aria-hidden="true"></i>
			<s:iterator value="actionErrors">
				<s:property />
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</s:iterator>
		</div>
	</s:if>
	<s:if test="hasActionMessages()">
		<div class="alert alert-info alert-dismissible fade show dvMsg" role="alert" id="msgSucesso">
			<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
			<s:iterator value="actionMessages">
				<s:property />
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</s:iterator>	
		</div>
	</s:if>
	 <br />
	<div id="dvMsgError"></div>
	
			<div class="col-xs-12 col-sm-6">
				<div class="titulo">
					<h6><span class="icon-titulo mr-2"></span>Filtros</h6>
				</div>
			</div>
			<div class="accordion" id="accordion" role="tablist" aria-multiselectable="true">
			  <s:form id="formConsultaSinistro" action="listarConsulta">
				<div class="card">
					<div class="card-header" id="headingOne" role="tab">
						<h5 class="mb-0">
							<button class="btn btn-link btn-one"
									onclick="toggleFunctionProcesso(this)" 
									type="button"
									data-toggle="collapse" 
									data-target="#collapseOne"
									aria-expanded="true" 
									aria-controls="collapseOne"
									data-parent="#accordion">
									Processo
								<div class="bar-geral one-bar">
									<div class="bar1"></div>
									<div class="bar2"></div>
								</div>
							</button>
						</h5>
					</div>
					<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
						<div class="card-body">
							<div class="container">
								<div class="row">
									<div class="col-sm-12 col-md-12 col-lg-4 check">
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="checkbox" id="cmpApolsFuncs"/> 
											<label class="form-check-label" for="checkboxApolsFuncs">Apólices Funcionários</label>
										</div>
									</div>
									
									<div class="col-sm-12 col-md-12 col-lg-6 check">
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="checkbox" id="cmpApolsCondEsp" name="filtro.condEspecialContrato"/> 
											<label class="form-check-label" for="checkboxApolsCondsEspeciais">Apólices com condições especiais contrato </label>
										</div>
									</div>
								</div>
								
								<div class="row mt-4">
									<div class="form-group col-sm-12 col-md-6 col-lg-4 col-xl-2">
										 <label for="text">DEDOC<span class="campoItalicoText"> (Dedoc/Processo)</span></label>
										 <s:textfield type="text" class="form-control dedocProc" id="cmpNumeroDedoc" name="filtro.dedocEProcesso" autocomplete="off"  maxlength="8" onkeypress="return isNumberKey(event)"/> 
									</div>
									
									<div class="form-group col-sm-12 col-md-6 col-lg-2 col-xl-2">
										<label for="text">Número de AVAS</label>
										<s:textfield type="text" class="form-control" id="cmpNumeroAvas"  name="filtro.numeroProcessoSinistro" autocomplete="off"  maxlength="15" onkeypress="return isNumberKey(event)" /> 
									</div>
									
									<div class="form-group col-sm-12 col-md-6 col-lg-3 col-xl-3">
										<label for="text">Chave da Apólice<span class="campoItalicoText"> (Sucursal/Apólice/Item)</span></label>
										<s:textfield type="text" class="form-control chaveApol" id="cmpSucursal" name="filtro.chaveApolice" autocomplete="off"/> 
									</div>
									
									<div class="form-group col-sm-12 col-md-6 col-lg-4 col-xl-2">
										<label for="text">CHASSI</label>
										<s:textfield type="text" class="form-control" id="cmpChassi" name="filtro.chassi" autocomplete="off"  maxlength="20" onkeyup="this.value = this.value.toUpperCase();"/> 
									</div>
									
									<div class="form-group col-sm-12 col-md-6 col-lg-2">
										<label for="text" class="label-name">Placa</label>
										<s:textfield type="text" class="form-control placa" id="cmpPlaca" name="filtro.placa" autocomplete="off"/> 
									</div>
									
									<div class="col-sm-12 col-md-6 col-lg-1">
										<div class="stld-fields">
											<label for="campUf">UF</label> 
											<s:select class="selectpicker form-control" id="campUf" name="filtro.uf" list="listaEstado" data-container="body" listKey="siglaEstado" listValue="siglaEstado" headerKey="" headerValue="-"/>
										</div>
									</div>
								</div>
								
								<div class="row mb-4 mt-4">
									<div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
										<div class="stld-fields">
											<label for="cmpNatProc">Natureza do Processo</label> 
											 <select class="selectpicker form-control" id="cmpNatProc"  
											 		 name="filtro.codigoNaturezaProcesso" 
											 		 title="Selecione..." data-hide-disabled="true"
											 		 data-container="body"
											 		 data-actions-box="true" multiple>
												<s:iterator value="listaNatureza">
												    <option value="<s:property value="codigoNatureza"/>">
														<s:property value="codigoNatureza + ' - ' + descNatureza"  escape="false"/>
													</option>
												</s:iterator>
								        </select>
										</div>
									</div>
									
									<div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
										<label for="cmpPosicaoAtual">Posição Atual do Processo</label> 
										<select class="selectpicker form-control" id="cmpPosicaoAtual" 
												data-live-search="true"
												title="Selecione..." data-hide-disabled="true"
												data-container="body"
												 name="filtro.posicaoAtual"
												 data-actions-box="true" multiple>
												<s:iterator value="listaPosicaoAtual">
												    <option value="<s:property value="codigoPosicao"/>">
														<s:property value="codigoPosicao + ' - ' + descricaoPosicao" escape="false" />
													</option>
												</s:iterator>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingTwo" role="tab">
						<h5 class="mb-0">
							<button class="btn btn-link btn-two collapsed"
								onclick="toggleFunctionNews(this)" type="button"
								data-toggle="collapse" data-target="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo"
								data-parent="#accordion">
								News
								<div class="bar-geral two-bar">
									<div class="bar-1"></div>
									<div class="bar-2"></div>
								</div>
							</button>
						</h5>
					</div>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
						<div class="card-body">
							<div class="container">
								<div class="row">
									<div class="col-sm-12 col-md-12 col-lg-4 col-xl-3">
										<div class="form-check form-check-inline">
										  <s:checkbox  class="form-check-input" name="filtro.newsOrcamento"  onclick="trataNewsOrcamento()" id="cmpNewsOrcamento"/>
										  <label class="form-check-label" for="cmpNewsOrcamento">Orçamentos não autorizados</label>
										</div>
									</div>
									<div class="col-sm-12 col-md-12 col-lg-4 col-xl-3">
										<div class="form-check form-check-inline">
										  <s:checkbox class="form-check-input" name="filtro.newsNotaFiscais"  onclick="trataNewsNotaFiscais()" id="cmpNewsNotaFiscais"/>
										  <label class="form-check-label" for="cmpNewsNotaFiscais">Notas Fiscais</label>
										</div>
									</div>
									<div class="col-sm-12 col-md-12 col-lg-4 col-xl-3">	
										<div class="form-check form-check-inline">
										  <s:checkbox class="form-check-input" name="filtro.newsNovosDocumentos"  id="cmpNewsNovosDocumentos"/>
										  <label class="form-check-label" for="cmpNewsNovosDocumentos">Novos Documentos</label>
										</div>
									</div>
									<div class="col-sm-12 col-md-12 col-lg-4 col-xl-3">	
										<div class="form-check form-check-inline">
										  <s:checkbox class="form-check-input" name="filtro.newsParecer"   id="cmpNewsParecer"/>
										  <label class="form-check-label" for="cmpNewsParecer">Parecer</label>
										</div>
									</div>	
									<div class="col-sm-12 col-md-12 col-lg-4 col-xl-3">
										<div class="form-check form-check-inline">
										  <s:checkbox class="form-check-input" name="filtro.newsAse"  id="cmpNewsAse"/>
										  <label class="form-check-label" for="cmpNewsAse">News ASE</label>
										</div>
									</div>
									<div class="col-sm-12 col-md-12 col-lg-4 col-xl-3">	
										<div class="form-check form-check-inline">
										  <s:checkbox class="form-check-input" name="filtro.newsDespachante"  id="cmpNewsDespachante"/>
										  <label class="form-check-label" for="cmpNewsDespachante">Despachantes</label>
										</div>
									</div>
									<div class="col-sm-12 col-md-12 col-lg-4 col-xl-3">	
										<div class="form-check form-check-inline">
										  <s:checkbox class="form-check-input" name="filtro.newsParalelismo"  id="cmpNewsParalelismo"/>
										  <label class="form-check-label" for="cmpNewsParalelismo">Paralelismo</label>
										</div>
									</div>	
									<div class="col-sm-12 col-md-12 col-lg-4 col-xl-3">	
										<div class="form-check form-check-inline">
										  <s:checkbox class="form-check-input" name="filtro.newsDebitosVeiculo"  id="cmpNewsDebitosVeiculo"/>
										  <label class="form-check-label" for="cmpNewsDebitosVeiculo">Débitos do Veículo</label>
										</div>
									</div>
									<div class="col-sm-12 col-md-12 col-lg-4 col-xl-3">	
										<div class="form-check form-check-inline">
										  <s:checkbox class="form-check-input" name="filtro.newsPremioPendente"  id="cmpNewsPremioPendente"/>
										  <label class="form-check-label" for="cmpNewsPremioPendente">Prêmio Pendente</label>
										</div>
									</div>
									<div class="col-sm-12 col-md-12 col-lg-4 col-xl-3">	
										<div class="form-check form-check-inline">
										  <s:checkbox class="form-check-input" name="filtro.newsReembolsoGastosPrestador"  id="cmpNewsReembGastosPrest"/>
										  <label class="form-check-label" for="cmpNewsReembGastosPrest">Reembolso de gastos do prestador</label>
										</div>
									</div>
								
									<div class="col-sm-12 col-md-12 col-lg-4 col-xl-3">	
										<div class="form-check form-check-inline">
										  <s:checkbox class="form-check-input" name="filtro.newsBeneficiario"  id="cmpNewsBeneficiario"/>
										  <label class="form-check-label" for="cmpNewsBeneficiario">Beneficiário</label>
										</div>
									</div>
									<div class="col-sm-12 col-md-12 col-lg-4 col-xl-3">	
										<div class="form-check form-check-inline">
										  <s:checkbox class="form-check-input" name="filtro.newsFinanceira"  id="cmpNewsFinanceira"/>
										  <label class="form-check-label" for="cmpNewsFinanceira">Financeira</label>
										</div>
									</div>
									<div class="col-sm-12 col-md-12 col-lg-4 col-xl-3">	
										<div class="form-check form-check-inline">
										  <s:checkbox class="form-check-input" name="filtro.newsPgtoDia"  id="cmpNewsPgtoDia"/>
										  <label class="form-check-label" for="cmpNewsPgtoDia">Pagamento do Dia</label>
										</div>
									</div>
								</div>
								
								<hr/>
								<div class="row" id="pnlOrcamentosNaoAutorizados" style="display: none">
									<div class="col-md-3">
										<div class="form-check form-check-inline">
										  <s:checkbox class="form-check-input" id="cmpVistoriaPrioritaria" name="filtro.vistoriaPrioritaria" onclick="trataNewsVistoriaPrioritaria()"/>
										  <label class="form-check-label" for="cmpVistoriaPrioritaria">Vistoria Prioritária</label>
										</div>
									</div>
									<div class="col-md-3">
										<div class="form-check form-check-inline">
										  <s:checkbox class="form-check-input" id="cmpAbaixoFranquiaDnc" name="filtro.abaixoFranquiaDnc" onclick="trataNewsFranquiaDnc()"/>
										  <label class="form-check-label" for="cmpAbaixoFranquiaDnc">Abaixo da Franquia com DNC</label>
										</div>
									</div>
								</div>		
								
								<div class="row" id="pnlVencimentoNF" style="display: none">
									<div class="col-12">
										<label for="">Vencimento Nota Fiscal</label>
									</div>	
									<div class="col-sm-12 col-md-6 col-lg-2 col-xl-2">
										<label for="codigoCondicaoVencNF">Vencimento</label> 
										<s:select id="codigoCondicaoVencNF" class="form-control" name="filtro.codigoCondicaoVencNF" data-container="body" list="listaCondicoes" listKey="codigo" listValue="descricao"/>
									</div>
									
									<div class="form-group col-sm-12 col-md-6 col-lg-2 col-xl-2">
											<label for="cmpViasVenc">Dias</label>
											 <s:textfield type="text" class="form-control" id="cmpViasVenc" name="filtro.numeroDiasVenc" autocomplete="off" maxlength="3"/> 
									</div>
									

									<div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 check">
										<div class="form-check form-check-inline">
										  <s:textfield  type="checkbox" class="form-check-input" id="listaTodos"  name="filtro.listaTodos"/>
										  <label class="form-check-label" for="listaTodos">Listar Todos com News de Nota Fiscal</label>
										 </div> 
									</div>
								</div>
						</div>
					</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingThree" role="tab">
						<h5 class="mb-0">
							<button class="btn btn-link btn-three collapsed"
								onclick="toggleFunctionOcorrencia(this)" type="button"
								data-toggle="collapse" data-target="#collapseThree"
								aria-expanded="false" aria-controls="collapseThree"
								data-parent="#accordion">
								Ocorrência
								<div class="bar-geral three-bar">
									<div class="bar-1"></div>
									<div class="bar-2"></div>
								</div>
							</button>
						</h5>
					</div>
					<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
						<div class="card-body">
							<div class="container">
								<div class="row">
									<div class="form-group col-sm-12 col-md-12 col-lg-6 col-xl-4">
										<label>Ocorrência do sinistro no período máximo de um ano:</label>
									</div>	
									<div class="form-group col-sm-6 col-sm-6 col-lg-2 col-xl-2">
										<label for="cmpOcorrDataInicio">Data Início:</label> 
										<s:textfield type="text" class="form-control date" name="filtro.dataOcorrenciaInicio" id="cmpOcorrDataInicio"/>
									</div>	
									<div class="form-group col-sm-6 col-sm-6 col-lg-2 col-xl-2">
										<label for="cmpOcorrDataFim">Data Fim:</label>
										<s:textfield type="text" class="form-control date" name="filtro.dataOcorrenciaFim" id="cmpOcorrDataFim" />
									</div>
								</div>
								<div class="row">	
									<div class="form-group col-sm-12 col-md-12 col-lg-6 col-xl-4">
										<label>Processo digitalizado no período máximo de um ano:</label>
									</div>	
									<div class="form-group col-sm-6 col-sm-6 col-lg-2 col-xl-2">
										<label for="cmpOcorrDataInicioDigitalizado">Data Início:</label> 
										<s:textfield type="text" class="form-control date" name="filtro.dataDigitalizadoInicio" id="cmpOcorrDataInicioDigitalizado"/>
									</div>	
									<div class="form-group col-sm-6 col-sm-6 col-lg-2 col-xl-2">
										<label for="cmpOcorrDataFimDigitalizado">Data Fim:</label>
										<s:textfield type="text" class="form-control date" name="filtro.dataDigitalizadoFim" id="cmpOcorrDataFimDigitalizado" />
									</div>
								</div>
								<div class="row">	
									<div class="form-group col-sm-12 col-md-12 col-lg-6 col-xl-4">
										<label>Vencimento da nota fiscal no período máximo de um ano:</label>
									</div>	
									<div class="form-group col-sm-6 col-sm-6 col-lg-2 col-xl-2">
										<label for="cmpOcorrDataInicioVencimento">Data Início:</label> 
										<s:textfield type="text" class="form-control date" name="filtro.dataVencimentoNFInicio" id="cmpOcorrDataInicioVencimento"/>
									</div>	
									<div class="form-group col-sm-6 col-sm-6 col-lg-2 col-xl-2">
										<label for="cmpOcorrDataFimVencimento">Data Fim:</label>
										<s:textfield type="text" class="form-control date" name="filtro.dataVencimentoNFFim" id="cmpOcorrDataFimVencimento" />
									</div>
								</div>
								<div class="row">	
									<div class="form-group col-sm-12 col-md-12 col-lg-6 col-xl-4">
										<label>Abertura do sinistro no período máximo de um ano:</label>
									</div>	
									<div class="form-group col-sm-6 col-sm-6 col-lg-2 col-xl-2">
										<label for="cmpOcorrDataInicioVencimentoAbertura">Data Início:</label> 
										<s:textfield type="text" class="form-control date" name="filtro.dataAberturaInicio" id="cmpOcorrDataInicioVencimentoAbertura"/>
									</div>	
									<div class="form-group col-sm-6 col-sm-6 col-lg-2 col-xl-2">	
										<label for="cmpOcorrDataFimVencimentoAbertura">Data Fim:</label>
										<s:textfield type="text" class="form-control date" name="filtro.dataAberturaFim" id="cmpOcorrDataFimVencimentoAbertura" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingFour" role="tab">
						<h5 class="mb-0">
							<button class="btn btn-link btn-four collapsed"
								onclick="toggleFunctionPrestador(this)" type="button"
								data-toggle="collapse" data-target="#collapseFour"
								aria-expanded="false" aria-controls="collapseFour"
								data-parent="#accordion">
								Prestador
								<div class="bar-geral four-bar">
									<div class="bar--1"></div>
									<div class="bar--2"></div>
								</div>
							</button>
						</h5>
					</div>
					<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
						<div class="card-body">
							<div class="container">
								<div class="row">
									<div class="form-group col-sm-12 col-md-12 col-lg-12 col-xl-12">
										<div class="form-check">
										    <input type="checkbox" class="form-check-input" id=checkPrestador name="filtro.ativaPrestador" onclick="habilitarPrestador()"/>
										    <label class="form-check-label" for="checkPrestador">Prestador</label>
										 </div>
									</div>	 
								</div>
								<div class="row">
									  <div class="col-sm-12 col-md-12 col-lg-12 col-xl-3">
										<div class="form-group form-check form-check-inline">
											<s:radio class="form-check-input"  name="filtro.tipoPrestador" id="grupoPrestador" value="filtro.tipoPrestador" onchange="carregaComboPrestadores(this.value, true)" list="#{'1':'Despachante', '2':'Reguladora'}"/>
										</div>
									  </div>
									  <div class="col-sm-12 col-md-12 col-lg-12 col-xl-4">
										<label for="cmbRazaoSocial">Razão Social</label> 
										<select  id="cmbRazaoSocial" class="form-control" disabled="disabled" data-container="body">
								 			<option value="-1">Selecione...</option>
								 			 <s:iterator value="listaPrestador">
										 			<option value="<s:property value="value"/>">
													<s:property value="label" escape="false" />
												</option>
											</s:iterator>	
										</select>	
									  </div>
								</div>
								<hr/>
								<div class="row">
										<div class="form-group col-sm-12 col-md-12 col-lg-4 col-xl-3">
											<div class="form-check form-check-inline">
											  <input type="checkbox" class="form-check-input" name="filtro.possuiNewsParecerQuestionamentoAcionamento" id="cmpAcionamento" disabled="disabled"/>
											  <label class="form-check-label" for="cmpAcionamento">Acionamento</label>
											  <input type="checkbox" class="form-check-input" name="filtro.possuiNewsParecerQuestionamentoPagamento" id="cmpPagamento" disabled="disabled"/>
											  <label class="form-check-label" for="cmpPagamento">Pagamento</label>
											</div>
									    </div>
								</div>	
								<hr/>	
								
								<div class="row">
									  <div class="form-group col-sm-12 col-md-6 col-lg-3 col-xl-2">
										<label for="cmbStatusAcionamento">Status</label> 
										 <select id="cmbStatusAcionamento" name="filtro.statusPrestador" class="form-control" disabled="disabled" data-container="body">
											 <option value="-1">Selecione...</option>
											 <s:iterator value="listaTipoStatusAcionamento">
												<option value="<s:property value="value"/>">
													<s:property value="label" escape="false" />
												</option>
											 </s:iterator>			
										 </select>
									  </div>
									  <div class="col-sm-12 col-md-3 col-lg-2 col-xl-2">
											<div class="form-group">
												<label for="dataInicio">Data Início:</label> 
												<s:textfield type="text" class="form-control" name="filtro.periodoInicialStatusPrestador" id="dataInicioAcionamento" disabled="disabled"/>
											</div>	
									  </div>
									   <div class="col-sm-12 col-md-3 col-lg-2 col-xl-2">
											<div class="form-group">	
												<label for="dataFim">Data Fim:</label>
												<s:textfield type="text" class="form-control" name="filtro.periodoFinalStatusPrestador" id="dataFimAcionamento" disabled="disabled"/>
											</div>
									  </div>	
								</div>
							</div>
						</div>
					</div>
				</div>
			  </s:form>
			</div>
			<div class="action-group">
				<button type="button" name="button" class="btn btn-second mr-3" onclick="formConsultaSinistro.reset();">Limpar</button>
				<button type="button" name="button" class="btn btn-primary mr-3" onclick="preparaSubmit();">Buscar</button>
			</div>
	 		<decorator:body/>
		</div>
	 </section>
</body>
<footer id="rodape">
	<img src="<s:url value='/includes/img/bg-footer.png'/>" alt="" style="width:100%" >
</footer>
</html>