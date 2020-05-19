<%@ page language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<header style="height: 128px">
	<div class="container py-1">
		<nav class="navbar navbar-expand-xl navbar-dark bg-dark" style="margin-top: 34px;">
			<a class="navbar-brand logo" href="#"> 
				<img src="<s:url value='/includes/img/logo.png'/>" alt="">
			</a>
			<button class="navbar-toggler mr-3" type="button"
					data-toggle="collapse" data-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="true"
					aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
	
			<div class="navbar-collapse collapse" id="navbarCollapse">
				<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" 
						   id="pills-consultas-tab" 
						   data-toggle="pill" 
						   href= '<s:url action="consultaSinistro.do" 		namespace="/modulo-consulta"/>'
						   role="tab" aria-controls="pills-consultas" 
						   aria-selected="false">Consultas</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle"  
							data-toggle="dropdown" 
							href="#" role="tab" 
							aria-selected="true">Cadastros</a>
						<div class="dropdown-menu">
					      <a class="dropdown-item" id="pills-cadastro-perfil-tab"        href= '<s:url action="redireciona-perfil.do" 		namespace="/modulo-consulta"/>'>Perfil</a>
					      <a class="dropdown-item" id="pills-cadastro-usuario-tab"       href= '<s:url action="redirecionaUsuario.do" 		namespace="/modulo-consulta"/>'>Usuário</a>
					      <a class="dropdown-item" id="pills-cadastro-instituicao-tab"   href= '<s:url action="redirecionaInstituicao.do"   namespace="/modulo-consulta"/>'>Instituições</a>
					      <a class="dropdown-item" id="pills-cadastro-tabelas-tab"       href= '<s:url action="redirecionaTabelas.do" 		namespace="/modulo-consulta"/>'>Tabelas</a>
					      <a class="dropdown-item" id="pills-cadastro-cartas-tab"        href= '<s:url action="redirecionaCartas.do" 		namespace="/modulo-consulta"/>'>Cartas</a>
					      <a class="dropdown-item" id="pills-cadastro-oficinas-tab"      href= '<s:url action="redirecionaOficinas.do" 		namespace="/modulo-consulta"/>'>Oficinas</a>
					    </div>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="pills-relatorios-tab" 
							   data-toggle="pill" href="#pills-relatorios"
							   role="tab" aria-controls="pills-relatorios" 
							   aria-selected="false">Relatórios</a>
						</li>
					</ul>
	
					<div class="dropdown user ml-auto">
						<label class="welcome">Bem-vindo(a): Igor - M123456</label>
						<button class="dropdown-toggle" type="button"
							    id="dropdownMenuButton" data-toggle="dropdown"
							    aria-haspopup="true" aria-expanded="false">
							<img src="<s:url value='/includes/img/credential.png'/>">
							<div class="options">
								<span></span> <span></span> <span></span>
							</div>
						</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<a class="dropdown-item" href="#">M123456 - Jeniffer</a> <a
								class="dropdown-item" href="#">Minhas Configurações</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Sair</a>
						</div>
					</div>
				</div>
			</nav>
		</div>
</header>