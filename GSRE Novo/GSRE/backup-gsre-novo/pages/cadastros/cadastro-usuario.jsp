<section class="consulta" style="margin-top: 50px">
	<div class="col-sm-12">
				<div class="titulo">
					<h6>Cadastro de Usuário</h6>
				</div>
	</div>
	<div class="col">
		<div class="accordion" id="accordion" role="tablist"
			aria-multiselectable="true">
			<div class="card">
				<div class="card-header" id="headingOne" role="tab">
					<div class="row">
						<div class="col-sm-2">
							<div class="form">
								<input type="text" id="matriculaUsuario" name="text" autocomplete="off" required maxlength="7">
								<label for="text" class="label-name"> 
									<span class="content-name">Matrícula</span>
								</label>
							</div>
						</div>
						<div class="col-sm-8">
							<div class="form">
								<input type="text" id="nomeUsuario" name="text" autocomplete="off" required maxlength="50">
								<label for="text" class="label-name"> 
									<span class="content-name">Nome</span>
								</label>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="form">
								<input type="text" id="cpfUsuario" name="text" autocomplete="off" required maxlength="11">
								<label for="text" class="label-name"> 
									<span class="content-name">CPF</span>
								</label>
							</div>
						</div>
						
						<div class="col-sm-2">
							<label style="color:#6c757d">Situação</label>
							<select class="form-control">
								<option value="0">Selecione</option>
						        <option value="1">Ativo</option>
						        <option value="2">Inativo</option>
						     </select>
						</div>
						
						<div class="col-sm-2">
							<label style="color:#6c757d">Perfil</label>
							<select class="form-control">
						        <option value="0">Selecione</option>
						        <option value="1">Administrador</option>
						        <option value="2">Analista</option>
						        <option value="3">Supervisor</option>
						     </select>
						</div>
						
						<div class="col-sm-2">
							<div class="form">
								<input type="text" id="alcadaPgto" name="text" autocomplete="off" required maxlength="9">
								<label for="text" class="label-name"> 
									<span class="content-name">Alçada de Pagamento</span>
								</label>
							</div>
						</div>
						
						<div class="col-sm-4">
							<div class="form">
								<input type="text" id="empresaUsuario" name="text" autocomplete="off" required maxlength="50">
								<label for="text" class="label-name"> 
									<span class="content-name">Empresa</span>
								</label>
							</div>
						</div>
						
						<div class="col-sm-2">
							<div class="form">
								<input type="text" id="cargoUsuario" name="text" autocomplete="off" required maxlength="20">
								<label for="text" class="label-name"> 
									<span class="content-name">Cargo</span>
								</label>
							</div>
						</div>
						<div class="col-sm-2">
							<label style="color:#6c757d">Analista Graduado</label>
							<div class="form-check">
							  <label class="form-check-label">
							    <input type="radio" class="form-check-input" name="optAnalistaGrad">Sim
							  </label>
							</div>
							<div class="form-check">
							  <label class="form-check-label">
							    <input type="radio" class="form-check-input" name="optAnalistaGrad">Não
							  </label>
							</div>
						</div>	
						
						<div class="col-sm-2">
							<label style="color:#6c757d">Usuário Humano</label>
							<div class="form-check">
							  <label class="form-check-label">
							    <input type="radio" class="form-check-input" name="optUsuarioHumano">Sim
							  </label>
							</div>
							<div class="form-check">
							  <label class="form-check-label">
							    <input type="radio" class="form-check-input" name="optUsuarioHumano">Não
							  </label>
							</div>
						</div>	
					</div>
				</div>
				<hr>
				<div id="botoesAction" class="col-sm-4v action-group">
					<button type="button" class="btn btn-primary">Salvar</button>
				</div>
			</div>
		</div>
	</div>
</section>