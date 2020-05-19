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
	<link rel="stylesheet" type="text/css" href="<s:url value='/includes/css/estilo.css'/>" />
	<link rel="stylesheet" type="text/css" href="<s:url value='/includes/css/style.css'/>" />
    
    <!-- Bradesco styles -->
    <link rel="stylesheet" type="text/css" href="<s:url value='/includes/css/bradseg_icons.css'/>" />
	
	<!-- External plugins -->
	<script type="text/javascript" src="<s:url value='/includes/js/jquery-3.3.1.slim.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='/includes/js/jquery.min.js'/>" charset="utf-8"></script>
	<script type="text/javascript" src="<s:url value='/includes/js/popper.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='/includes/js/bootstrap/bootstrap.min.js'/>"></script>
	
    <!-- configs js -->
    <script type="text/javascript" src="<s:url value='/includes/js/config.js'/>"></script>
    
    <script type="text/javascript" src="<s:url value='/includes/js/comum/comum.js'/>" charset="utf-8"></script>

    <!-- Script Datepicker-->
    <script type="text/javascript" src="<s:url value='/includes/js/bootstrap/bootstrap-datetimepicker.js'/>"></script>
    
    
    <script type="text/javascript" src="<s:url value='/includes/js/consultasinistro/consulta-sinistro.js'/>" charset="utf-8"></script>
    <script type="text/javascript" src="<s:url value='/includes/js/moment/moment.min.js'/>"></script>
    <script type="text/javascript" src="<s:url value='/includes/js/moment/moment-with-locales.js'/>"></script>
    
    <link rel="stylesheet" type="text/css" href="<s:url value='/includes/css/documento/documento-processo.css'/>" />
    <script type="text/javascript" src="<s:url value='/includes/js/documento/documento-processo.js'/>" charset="utf-8"></script>
    
    <link rel="stylesheet" type="text/css" href="<s:url value='/includes/css/timeline/timeline.css'/>" />
       <script type="text/javascript">
           $(function () {
               $('.datetimepicker1').datetimepicker({
               	 locale: 'pt-br',
               	 format:'DD/MM/YYYY'
               });
           });
       </script>
	
	<s:url var="baseURL" value="/"/>
	<script>window.baseURL = "${baseURL}";</script>
	
	<decorator:head />
</head>
<%@ include file="/WEB-INF/pages/menu.jsp"%>
<section class="interna">
		<div class="container">
			<div class="accordion" id="accordion" role="tablist" aria-multiselectable="true">
				<jsp:include page="/WEB-INF/pages/comum/detalheprocesso/detalhe-processo.jsp" />
			</div>
			<div class="desktop mtop-10">
			  <div class="row">
				<div class="col-md-1"  id="tab-content-sidebar">
					<div class="nav flex-column nav-pills white" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link zedobone active"   	 id="ze-do-bone-tab" 	 	  href="/GSRE-SinistroAuto/modulo-consulta/detalharProcesso.do#zedobone" title="Acompanhamento"></a> 
						<a class="nav-link orcamento" 		  	 id="orcamento-tab" 		 href="/GSRE-SinistroAuto/modulo-consulta/detalharProcesso.do#orcamento" title="Orçamento"></a> 
						<a class="nav-link parecer" 		     id="parecer-tab" 		 	 href="/GSRE-SinistroAuto/modulo-consulta/detalharProcesso.do#parecer" title="Parecer"></a> 
						<a class="nav-link indenizacao" 	 	 id="indenizacao-tab" 	 href="/GSRE-SinistroAuto/modulo-consulta/detalharProcesso.do#indenizacao" 	 title="Indenização"></a>
						<a class="nav-link benef-veiculo" 		 id="benef-veiculo-tab"	 	  href="/GSRE-SinistroAuto/modulo-consulta/detalharProcesso.do#benef-veiculo" title="Beneficiário / Veículo"></a> 
						<a class="nav-link acompanhamento" 		 id="acompanhamento-tab"  	 href="/GSRE-SinistroAuto/modulo-consulta/detalharProcesso.do#acompanhamento" 	title="Acompanhamento Histórico"></a> 
 						<a class="nav-link acompanhamentosaf" 	 id="acompanhamentosaf-tab"  href="/GSRE-SinistroAuto/modulo-consulta/detalharProcesso.do#"   title="Acompanhamento SAF"></a>
					</div>
				</div>
				<div class="col-md-10" id="tab-content-principal">
					<div class="tab-content white" id="conteudo-principal">
						<decorator:body/>
					</div>
				</div>
				
				<div class="col-md-6" id="tab-imagens" style="display:none">
					<div class="tab-content white">
						<div class="container-fluid">
							   <h1 id="link-imagens"><a data-toggle="collapse" data-parent="#accordionExample" href="#collapseDoc">Documentos</a></h1>
							   <%@ include file="/WEB-INF/pages/p8/inportMenuP8.jsp"%>							   
						</div>
					</div>
				</div>
				<div class="col-md-1" id="tab-documentos">
					<div class="tab-content white">
						<h4 id="link-docs"><a data-toggle="collapse" data-parent="#accordionExample" href="#collapseDoc">Documentos </a></h4>
					</div>
				</div>
			 </div>	
			</div>
			
			<div class="mobile">
					<div class="row">
						<div class="col">
							<div class="accordion" id="accordionMobile">
								<div class="card">
									<div class="card-header" id="zedobone">
										<h5 class="mb-0">
											<button class="btn btn-link zedobone" 
													type="button" data-toggle="collapse" 
													data-target="#zedobone1"
													aria-expanded="false" 
													aria-controls="zedobone1">Resumo
											</button>
										</h5>
									</div>
									<div id="zedobone1" class="collapse" aria-labelledby="zedobone" data-parent="#accordionMobile">
										<div class="card-body">
											<p>Resumo</p>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header" id="orcamento">
										<h5 class="mb-0">
											<button class="btn btn-link orcamento collapsed" 
													type="button" data-toggle="collapse" 
													data-target="#orcamento2"
													aria-expanded="false" 
													aria-controls="orcamento2">Orçamento
											</button>
										</h5>
									</div>
									<div id="orcamento2" class="collapse" aria-labelledby="orcamento" data-parent="#accordionMobile">
										<div class="card-body">
											<p>orcamento</p>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header" id="parecer">
										<h5 class="mb-0">
											<button class="btn btn-link parecer collapsed" 
													type="button" data-toggle="collapse" 
													data-target="#parecer3"
													aria-expanded="false" 
													aria-controls="parecer3">Parecer</button>
										</h5>
									</div>
									<div id="parecer3" class="collapse" aria-labelledby="parecer" data-parent="#accordionMobile">
										<div class="card-body">
											<p>parecer</p>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header" id="indenizacao">
										<h5 class="mb-0">
											<button class="btn btn-link indenizacao collapsed"
													type="button" data-toggle="collapse"
													data-target="#indenizacao4" aria-expanded="false"
													aria-controls="indenizacao4">Indenização</button>
										</h5>
									</div>
									<div id="indenizacao4" class="collapse" aria-labelledby="indenizacao" data-parent="#accordionMobile">
										<div class="card-body">
											<p>indenizacao</p>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header" id="beneficiaria">
										<h5 class="mb-0">
											<button class="btn btn-link benef-veiculo collapsed"
													type="button" data-toggle="collapse"
													data-target="#beneficiaria5" aria-expanded="false"
													aria-controls="beneficiaria5">Beneficiário /
													Veículo
											</button>
										</h5>
									</div>
									<div id="beneficiaria5" class="collapse" aria-labelledby="beneficiaria" data-parent="#accordionMobile">
										<div class="card-body">
											<div class="row">
												<div class="col-12">
													<h2>Dados do beneficiário</h2>
												</div>
												<div class="col-sm-9">
													<div class="form">
														<input type="text" name="text" autocomplete="off" required>
														<label for="text" class="label-name"> <span class="content-name">Nome</span>
														</label>
													</div>
												</div>
												<div class="col-sm-3">
													<div class="form">
														<input type="text" name="text" autocomplete="off" required>
														<label for="text" class="label-name"> <span class="content-name">CPF</span>
														</label>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form">
														<input type="text" name="text" autocomplete="off" required>
														<label for="text" class="label-name"> <span class="content-name">Banco</span>
														</label>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form">
														<input type="text" name="text" autocomplete="off" required>
														<label for="text" class="label-name"> <span class="content-name">Agência</span>
														</label>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form">
														<input type="text" name="text" autocomplete="off" required>
														<label for="text" class="label-name"> <span class="content-name">Conta corrente</span>
														</label>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-12">
													<h2>Dados do veículo</h2>
												</div>
												<div class="col-sm-6">
													<div class="form">
														<input type="text" name="text" autocomplete="off" required>
														<label for="text" class="label-name"> <span class="content-name">Placa</span>
														</label>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="form">
														<input type="text" name="text" autocomplete="off" required>
														<label for="text" class="label-name"> <span class="content-name">Chassi</span>
														</label>
													</div>
												</div>

											</div>
											<div class="row">
												<div class="col-12">
													<h2>Dados do proprietário</h2>
												</div>
												<div class="col-sm-9">
													<div class="form">
														<input type="text" name="text" autocomplete="off" required>
														<label for="text" class="label-name"> <span class="content-name">Nome</span>
														</label>
													</div>
												</div>
												<div class="col-sm-3">
													<div class="form">
														<input type="text" name="text" autocomplete="off" required>
														<label for="text" class="label-name"> <span class="content-name">CPF</span>
														</label>
													</div>
												</div>

											</div>
											<div class="row">
												<div class="col">
													<div class="float-right mt-5">
														<button type="button" class="btn btn-cancel">Cancelar</button>
														<button type="button" class="btn btn-salvar">Salvar</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header" id="acompanhamento">
										<h5 class="mb-0">
											<button class="btn btn-link acompanhamento collapsed"
													type="button" data-toggle="collapse"
													data-target="#acompanhamento6" aria-expanded="false"
													aria-controls="acompanhamento6">Acompanhamento
											</button>
										</h5>
									</div>
									<div id="acompanhamento6" class="collapse" aria-labelledby="acompanhamento" data-parent="#exampleAccordion">
										<div class="card-body">
											<p>Acompanhamento</p>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			
		</div>
	</section>
<footer>
	<img src="<s:url value='/includes/img/bg-footer.png'/>" alt="" style="width:100%" >
</footer>
</html>