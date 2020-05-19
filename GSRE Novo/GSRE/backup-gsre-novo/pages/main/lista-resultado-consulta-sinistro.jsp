<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="row mt-5 resultado-filtro">
	<div class="col">
		<p><strong><s:property value="quantidadeRegistro"/></strong> resultado(s) encontrado(s).</p>
		<div class="table-responsive">
			<table class="table table-striped" id="tabelaProcesso">
			  <s:if test="%{listaConsulta.size>0}">
				<thead>
					<tr>
						<th scope="col"></th>
						<th scope="col">Chave da Apólice</th>
						<th scope="col">Dedoc</th>
						<th scope="col">Ocorrência</th>
						<th scope="col">Nº Avas</th>
						<th scope="col">Data do Aviso</th>
						<th scope="col">Natureza</th>
						<th scope="col">Situação do Processo</th>
						<th scope="col">Posição Atual</th>
					</tr>
				</thead>
				<tbody>
				  <s:iterator value="listaConsulta" status="rowstatus">
					<tr style="display:none">
						<td class="actions">
	                        <div class="float-right">
		                          <div class="menu-visible">
		                            <span class="circle"></span>
		                            <span class="circle"></span>
		                            <span class="circle"></span>
		                          </div>
		                          <div class="menu-invisible">
		                            <a href="#"  onclick="ativaLoading(); location.href='<s:url  namespace="/modulo-analise" action="analise-sinistro" escapeAmp="false"><s:param name="numeroSinistro" value="%{numeroSinistro}" /><s:param name="codigoNatureza" value="%{codigoNatureza}" /><s:param name="numeroProcesso" value="%{numeroProcesso}" /></s:url>'">
										<img src="<s:url value='/includes/img/visualizar.png'/>" title="Visualizar detalhes" data-toggle="tooltip" data-original-title="Visualizar detalhes">
		                            </a>
		                          </div>
	                        </div>
	                     </td>
						<td><s:property value="chaveApolice"/></td>
						<td><s:property value="numeroSinistro + '-' + numeroProcesso"/></td>
						<td><s:date name="dataOcorrencia" format="dd/MM/yyyy" /></td>
						<td><s:property value="numeroAvas"/></td>
						<td><s:property value="dataAviso"/></td>
						<td><s:property value="codigoNatureza"/></td>
						<td><s:property value="situacaoProcesso"/></td>
						<td><s:property value="posicaoAtual"/></td>
					</tr>
				  </s:iterator>	
				</tbody>
				</s:if>
				<s:elseif  test="%{listaConsulta.size == 0}">
					<tbody>
						<tr><td colspan="9">Não existem resultados para o filtro informado.</td></tr>
					</tbody>
				</s:elseif>	
			</table>
			 <s:if test="%{listaConsulta.size>5}">
				<div style="text-align:center" id="btn-load-more">
					<button type="button" class="btn btn-light btn-lg">Mostrar mais resultados</button>
				</div>
			</s:if>	
		</div>
	</div>
</div>
<script type="text/javascript" src="<s:url value='/includes/js/consultasinistro/lista-resultado-consulta-sinistro.js'/>"></script>