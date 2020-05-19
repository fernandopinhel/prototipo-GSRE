<%@ page language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>


<div class="card">
		<div class="card-header" id="headingOne" role="tab">
			<h5 class="mb-0">
				<button class="btn btn-link btn-one"
					onclick="toggleFunctionDetalheProcesso(this)" 
				type="button"
				data-toggle="collapse" data-target="#collapseOne"
				aria-expanded="false" aria-controls="collapseOne"
				data-parent="#accordion">
				Detalhe do Processo
				<div class="bar-geral one-bar">
					<div class="bar-1"></div>
					<div class="bar-2"></div>
				</div>
			</button>
		</h5>
		<div class="card-body">
			<div class="row">
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Chave da Apólice</p>
							<span><s:property value="#session.dadosConsultaSinistro.chaveApolice" /></span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-naas.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Número DEDOC</p>
							<span><s:property value="#session.dadosConsultaSinistro.numeroSinistro + '-' + #session.dadosConsultaSinistro.numeroProcesso" /></span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-sinistro.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Número AVAS</p>
							<span><s:property value="#session.dadosConsultaSinistro.numeroAvas" /></span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-apolice.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Nome Segurado</p>
							<span><s:property value="#session.dadosConsultaSinistro.nome" /></span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-nome.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
		<div class="card-body">
			<div class="row">
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Data Ocorrência do Sinistro</p>
							<span><s:date name="#session.dadosConsultaSinistro.dataOcorrencia" format="dd/MM/yyyy" /></span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-data.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>


				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Natureza do Processo</p>
							<span><s:property value="#session.dadosConsultaSinistro.codigoNatureza" /></span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-natureza.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>

				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Marca/Tipo do Veículo</p>
							<span><s:property value="#session.dadosConsultaSinistro.marca" /></span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-carro.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Placa/UF do Veículo</p>
							<span><s:property value="#session.dadosConsultaSinistro.placa + '/' + #session.dadosConsultaSinistro.uf"/></span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-placa.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Chassi</p>
							<span><s:property value="#session.dadosConsultaSinistro.chassi" /></span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-chassi.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>News</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-notificacao.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Reguladora</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-reguladora.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Orçamentadora</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-orcamentadora.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>

				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Despachante</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-despachante.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>

				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Status do Sinistro</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-status.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>

				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Ressarcimento</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-ressarcimento.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>

				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Caso Reserva</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-reserva.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Alienação Fiduciária</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-alienacao.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Prêmio pendente</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-premio.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Nome da Oficina</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-oficina.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Pagamento foi rejeitado?Qual o Motivo?</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-pgto-rejeitado.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Processo Aprovado por</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-aprovado-por.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Processo Acionado por</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-acionar.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Processo Liquidado por</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-liquidado.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Processo Encerrado por</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-encerrado.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Pagamento Superior a IS</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-pgto-superior.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-3">
					<div class="box">
						<div class="float-left">
							<p>Valor da IS</p>
							<span>teste</span>
						</div>
						<div class="float-right">
							<img src="<s:url value='/includes/img/icon-valor.png'/>" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="<s:url value='/includes/js/detalhe-processo/detalhe-processo.js'/>" charset="utf-8"></script>