<%@ page language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>

<s:if test="%{!listaResumoAtividades.empty}">
	<div>
		<h1><s:text name="msg.titulo.resumo.atividades"/></h1>
	</div>
	<div class="d-flex justify-content-center content-timeline">
		<div class="timeline">
			<s:iterator value="listaResumoAtividades" var="tarefa">
				<div class="entry">
					<div class="title">
						<h3><s:date name="#tarefa.dataInicio" format="dd/MM/yyyy hh:mm" /></h3>
					</div>
					<div class="body">
						<p class="event-gsre"><s:property value="#tarefa.nomeAtividade" /></p>
						<ul>
							<li><s:property value="#tarefa.nomeFuncionario " /></li>
						</ul>
					</div>
				</div>
			</s:iterator>	
		</div>
	</div>
</s:if>