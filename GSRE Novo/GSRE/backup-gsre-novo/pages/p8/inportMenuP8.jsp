<%@ page language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page" %>

<link rel="stylesheet" type="text/css" href="<s:url value='/includes/css/p8/inputMenuP8.css'/>" />
<link rel="stylesheet" type="text/css" href="<s:url value='/includes/css/p8/cropper.css'/>" />
<link rel="stylesheet" type="text/css" href="<s:url value='/includes/css/bootstrap/bootstrap-select.css'/>" />
<div class="row">
    <div class="col-md-6">
        <label for="filtro">Filtro</label>
        <select class="selectpicker form-control" id="filtro" name="filtro.codigoNaturezaProcesso" data-live-search="true" title="Selecione..." data-hide-disabled="true" data-actions-box="true" multiple>
        	<s:iterator var="classificacaoSistema" value="classificacaoDocumento">
	            <option value="<s:property value='codigo' />"><s:property value="getText(descricao)" /></option>
            </s:iterator>
        </select>
    </div>
    <div class="col-md-6">
        <label for="filtro">Tipo do Documento</label>
        <select class="selectpicker form-control" id="filtro" name="filtro.codigoNaturezaProcesso" data-live-search="true" title="Selecione..." data-hide-disabled="true" data-actions-box="true">
            <option value="0" selected>Selecione</option>
            <s:iterator var="classificacaoSistema" value="classificacaoTipoDocumento">
	            <option value="<s:property value='codTipDoc' />"><s:property value="descTipDoc" /></option>
            </s:iterator>
        </select>
    </div>
    <div class="row container-imagens">
        <div class="col-md-10 panel-main">
            <div class="toolbar toolbar-principal toolbar-imagens">
                <button title="Editar Imagem" class="toolbar-botao toolbar-botao-principal" id="editarImagem">
                    <span class="fa-ajuste fa fa-pencil"></span>
                </button>
                <button title="Abrir em uma nova janela" class="toolbar-botao toolbar-botao-principal" id="abrirPopUp">
                    <span class="fa-ajuste fa fa-search"></span>
                </button>
            </div>
            <div class="toolbar toolbar-principal toolbar-arquivos" style="display: none;">
                <button title="Fazer Download do Arquivo" class="toolbar-botao toolbar-botao-principal" id="download">
                    <span class="fa-ajuste fa fa-download"></span>
                </button>
                <button title="Abrir em uma nova janela" class="toolbar-botao toolbar-botao-principal" id="abrirPopUp">
                    <span class="fa-ajuste fa fa-search"></span>
                </button>
            </div>
            <img src="<s:url value='/includes/imagens/img1.jpg'/>" id="selected" data-codigodocumento="2"
                data-tipodocumento="pdf">
        </div>

        <div class="col-md-2 thumbs">
            <img src="<s:url value='/includes/imagens/img1.jpg'/>">
            <img src="<s:url value='/includes/imagens/image-pdf.png'/>">
            <img src="<s:url value='/includes/imagens/img2.jpg'/>">
            <img src="<s:url value='/includes/imagens/image-doc.png'/>">
            <img src="<s:url value='/includes/imagens/img3.jpg'/>">
            <img src="<s:url value='/includes/imagens/img5.jpg'/>">
            <img src="<s:url value='/includes/imagens/img1.jpg'/>">
            <img src="<s:url value='/includes/imagens/img2.jpg'/>">
            <img src="<s:url value='/includes/imagens/img3.jpg'/>"> 
            <!-- <img src="<s:url value='/fileNetHandler/getFile.do?codigoDocumento=2'/>"> -->
        </div>
    </div>
    <div class="modal fade" id="modalAjusteImagem" tabindex="-1" role="dialog" aria-labelledby="modalLabel"
        aria-hidden="true" style="z-index: 2016;">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalLabel">Editar Imagem</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="img-container">
                        <div class="toolbar toolbar-modalAjuste">
                            <button title="Mover" class="toolbar-botao toolbar-botao-modalAjuste" id="mover">
                                <span class="fa-modalAjuste fa fa-arrows"></span>
                            </button>
                            <button title="Cortar" class="toolbar-botao toolbar-botao-modalAjuste" id="cortar">
                                <span class="fa-modalAjuste fa fa-crop"></span>
                            </button>
                            <button title="Zoom In" class="toolbar-botao toolbar-botao-modalAjuste" id="zoomIn">
                                <span class="fa-modalAjuste fa fa-search-plus"></span>
                            </button>
                            <button title="Zoom Out" class="toolbar-botao toolbar-botao-modalAjuste" id="zoomOut">
                                <span class="fa-modalAjuste fa fa-search-minus"></span>
                            </button>
                            <button title="Girar para esquerda" class="toolbar-botao toolbar-botao-modalAjuste"
                                id="girarEsquerda">
                                <span class="fa-modalAjuste fa fa-rotate-left"></span>
                            </button>
                            <button title="Girar pra direita" class="toolbar-botao toolbar-botao-modalAjuste"
                                id="girarDireita">
                                <span class="fa-modalAjuste fa fa-rotate-right"></span>
                            </button>
                        </div>
                        <div style="width: auto; height: 600px;">
                            <img id="image" src="https://avatars0.githubusercontent.com/u/3456749"
                            data-codigodocumento="2" data-tipodocumento="pdf"
                            style="width: 800; height: 600;">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-primary" id="concluirEdicao">Concluir</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<s:url value='/includes/js/p8/inportMenuP8.js'/>"></script>
<script type="text/javascript" src="<s:url value='/includes/js/p8/cropper.js'/>"></script>
<script type="text/javascript" src="<s:url value='/includes/js/bootstrap/bootstrap-select.js'/>"></script>