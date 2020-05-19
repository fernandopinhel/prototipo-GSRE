<%@ page language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<body>
<section class="consulta" style="margin-top: 50px">
	<div class="col-sm-12">
				<div class="titulo">
					<h6>Cadastro de Perfil</h6>
				</div>
	</div>
	<div class="col">
		<div class="accordion" id="accordion" role="tablist"
			aria-multiselectable="true">
			<div class="card">
				<div class="card-header" id="headingOne" role="tab">
					<div class="row">
						<div class="col-sm-4">
							<div class="form">
								<input type="text" name="text" autocomplete="off" required>
								<label for="text" class="label-name"> <span
									class="content-name">Nome do Perfil</span>
								</label>
							</div>
						</div>
					</div>

					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="defaultUncheckedDisabled2"> 
						<label class="custom-control-label" for="defaultUncheckedDisabled2">Criação de Cotação</label>
					</div>

					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="defaultCheckedDisabled2"> 
						<label class="custom-control-label" for="defaultCheckedDisabled2">Criação de Parecer</label>
					</div>
				</div>
				<hr>
				<div id="botoesAction" class="col-sm-4v action-group">
					<button type="button" class="btn btn-primary">Salvar</button>
				</div>
					<div class="col">
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">Nome do Perfil</th>
										<th scope="col">Data de Alteração</th>
										<th scope="col"></th>
										<th scope="col"></th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<td>teste</td>
										<td>99/99/9999</td>
										<td>
											<button type="button" class="btn-primary btn-sm" data-toggle="tooltip" data-placement="top" title="Editar" onclick="">
												<i class="fa fa-edit"></i>
											</button>
										</td>
										<td>
											<button type="button" class="btn-danger btn-sm" data-toggle="tooltip" data-placement="top" title="Excluir" onclick="">
												<i class="fa fa-trash"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td>teste</td>
										<td>99/99/9999</td>
										<td>
											<button type="button" class="btn-primary btn-sm" data-toggle="tooltip" data-placement="top" title="Editar" onclick="">
												<i class="fa fa-edit"></i>
											</button>
										</td>
										<td>
											<button type="button" class="btn-danger btn-sm" data-toggle="tooltip" data-placement="top" title="Excluir" onclick="">
												<i class="fa fa-trash"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td>teste</td>
										<td>99/99/9999</td>
										<td>
											<button type="button" class="btn-primary btn-sm" data-toggle="tooltip" data-placement="top" title="Editar" onclick="">
												<i class="fa fa-edit"></i>
											</button>
										</td>
										<td>
											<button type="button" class="btn-danger btn-sm" data-toggle="tooltip" data-placement="top" title="Excluir" onclick="">
												<i class="fa fa-trash"></i>
											</button>
										</td>
									</tr>
									<tr>
										<td>teste</td>
										<td>99/99/9999</td>
										<td>
											<button type="button" class="btn-primary btn-sm" data-toggle="tooltip" data-placement="top" title="Editar" onclick="">
												<i class="fa fa-edit"></i>
											</button>
										</td>
										<td>
											<button type="button" class="btn-danger btn-sm" data-toggle="tooltip" data-placement="top" title="Excluir" onclick="">
												<i class="fa fa-trash"></i>
											</button>
										</td>
									</tr>
									<tr class="separator">
										<td colspan="5"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<ul class="pagination">
							<li><a href="#" class="prev"> <span
									class="icon icon-seta-dupla-b" aria-hidden="true"></span>
							</a></li>
							<li><a href="#" class="prev"> <span
									class="icon icon-seta-esquerda-a" aria-hidden="true"></span>
							</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#" class="active">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" class="next"> <span
									class="icon icon-seta-direita-a" aria-hidden="true"></span>
							</a></li>
							<li><a href="#" class="next"> <span
									class="icon icon-seta-dupla-direita-b" aria-hidden="true"></span>
							</a></li>
						</ul>
					</div>
			</div>
		</div>
	</div>
</section>
</body>