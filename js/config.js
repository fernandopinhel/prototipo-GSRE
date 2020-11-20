// tabela com header fixo
var $th = $('.tableFixHead').find('thead th')
$('.tableFixHead').on('scroll', function() {
  $th.css('transform', 'translateY('+ this.scrollTop +'px)');  
});
// fim tabela com header fixo

// select add box
var multiSel = function(params) {
  this.sel = params.sel;
  this.box = params.box;
  this.data = {};
  //this.options ={};
  console.log('btn..', params.btn);
  for (var i = 0; i < params.btn.length; i++) {
    params.btn[i].addEventListener("click", this, false);
  }
}

multiSel.prototype = {
  handleEvent: function(event) {
    var action = $(event.target).attr('data-ms');
    console.log('target:', action);
    if (action == 'add') {
      this.data.v = this.sel.val();
      this.data.t = this.sel.find('option:selected').text();
      if (this.data.v == 'default') {
        return;
      }
      this._addToBox();
      this._hideOption();
    } else if (action == 'remove') {
      this.target = $(event.target).parent();
      this._removeFromBox();
      this._showOption();
    } else {
      console.log('Ooooopsie!');
    }
  },

  _addToBox: function() {
    var spn = $('.sltd-box span.sltd-item.sample').clone(true, true);
    spn.html(this.data.t + spn.html());
    spn.removeClass('sample');
    spn.data('id', this.data.v);
    spn[0].addEventListener("click", this, false); //true clone did not carry the event. maybe cause of the js binding?
    this.box.append(spn);
  },

  _hideOption: function() {
    this.sel.find('option[value="' + this.data.v + '"]').hide();
    this.sel.val('default'); //reset to default
  },
  _showOption: function() {
    this.sel.find('option[value="' + this.data.v + '"]').show();
    this.sel.val('default'); //hmm...
  },
  _removeFromBox: function() {
    this.data.v = this.target.data('id');
    this.target.remove();
  }
};

$(document).ready(function() {
  var params = {
    sel: $('#cmpNatProc'),
    box: $('#box'),
    btn: $('.ms-actn')
  };
  var ms = new multiSel(params);
});


$(document).ready(function(){
  $(".add-mais").click(function(){
    $(".box-item").removeClass("d-none");
  });
});



// // select box
// $(".custom-select").each(function() {
// var classes = $(this).attr("class"),
// id      = $(this).attr("id"),
// name    = $(this).attr("name");
// var template =  '<div class="' + classes + '">';
// template += '<span class="custom-select-trigger">' + $(this).attr("placeholder") + '</span>';
// template += '<div class="custom-options">';
// $(this).find("option").each(function() {
// template += '<span class="custom-option ' + $(this).attr("class") + '" data-value="' + $(this).attr("value") + '">' + $(this).html() + '</span>';
// });
// template += '</div></div>';

// $(this).wrap('<div class="custom-select-wrapper"></div>');
// $(this).hide();
// $(this).after(template);
// });
// $(".custom-option:first-of-type").hover(function() {
// $(this).parents(".custom-options").addClass("option-hover");
// }, function() {
// $(this).parents(".custom-options").removeClass("option-hover");
// });
// $(".custom-select-trigger").on("click", function() {
// $('html').one('click',function() {
// $(".custom-select").removeClass("opened");
// });
// $(this).parents(".custom-select").toggleClass("opened");
// event.stopPropagation();
// });
// $(".custom-option").on("click", function() {
// $(this).parents(".custom-select-wrapper").find("select").val($(this).data("value"));
// $(this).parents(".custom-options").find(".custom-option").removeClass("selection");
// $(this).addClass("selection");
// $(this).parents(".custom-select").removeClass("opened");
// $(this).parents(".custom-select").find(".custom-select-trigger").text($(this).text());
// });
// // fim select box

// script Tooltip
$(document).ready(function () {
  $('[data-toggle="tooltip"]').tooltip();
})
// fim script Tooltip

$(document).ready(function(){
  $(".loadMore").click(function(){
    $(".loads-m").removeClass("d-none");
  });
});

$(document).ready(function(){
  $(".b-parecer").click(function(){
    $('.novo-parecer').removeClass('d-none');
  });
  $(".b-salvar-parecer").click(function(){
    $('.novo-parecer').addClass('d-none');
  });
  $(".b-cancelar-parecer").click(function(){
    $('.novo-parecer').addClass('d-none');
  });
  $(".close-parecer").click(function(){
    $('.novo-parecer').addClass('d-none');
  });
});

$(document).ready(function() {
  // Documentos
  $('#link-docs').click(function() {
      if ($("#tab-content-principal").hasClass("col-xl-10")) {
        $('#tab-imagens').toggle('fade').attr('class','col-lg-6 col-xl-7');
        $('#tab-content-principal').attr('class','col-lg-4 col-xl-4');
        $('#tab-content-sidebar').attr('class','col-lg-2 col-xl-1');
        $('#tab-documentos').hide();
      }
  });
  // Imanges
  $('#link-imagens').click(function() {
    if ($("#tab-content-principal").hasClass("col-xl-4")) {
      $('#tab-content-principal').attr('class','col-lg-8 col-xl-10');
      $('#tab-content-sidebar').attr('class','col-lg-2 col-xl-1');
      $('#tab-imagens').hide();
      $('#tab-documentos').show();
    }
  });
});

$(document).ready(function(){
  $("#cmpNewsOrcamento").click(function(){
    $(".hr-mais-opcoes").toggleClass("d-none");
  });
  $("#cmpNewsNotaFiscais").click(function(){
    $(".hr-mais-opcoes").toggleClass("d-none");
  });
});


// marcar todos checkbox
function marcarTodos(marcardesmarcar){
  $('.marcar').each(function () {
      this.checked = marcardesmarcar;
  });
}

$(document).ready(function(){
  $(".check-todos").click(function(){
    $(".actions-autorizacao").toggleClass("d-none");
  });
  $(".marcar").click(function(){
    $(".actions-autorizacao").removeClass("d-none");
  });
});

$(document).ready(function(){
  $(".check-todos").click(function(){
    $(".actions-edicao").toggleClass("d-none");
  });
  $(".marcar").click(function(){
    $(".actions-edicao").removeClass("d-none");
  });
});

// interação pedido de cobertura
$(document).ready(function(){
  $("#radio1").click(function(){
    $(".alterar-pedido").removeClass("d-none");
    $(".f-alterar").removeClass("d-none");
  });
  $("#radio2").click(function(){
    $(".alterar-pedido").removeClass("d-none");
    $(".f-alterar").removeClass("d-none");
  });  
});

$(document).ready(function(){
  $(".ativar-td-reabrir").click(function(){
    $(".td-reabrir").removeClass("d-none");  
    $(".td-cadeado-reabrir  ").addClass("d-none");  
  });
});

$(document).ready(function(){
  $(".b-incluir-cobertura").click(function(){
    $(".alterar-pedido").addClass("d-none");
    $(".f-alterar").addClass("d-none");
    $(".incluir-pedido").removeClass("d-none");
    $(".f-incluir").removeClass("d-none");    
    $("#radio1").attr("checked", false);
    $("#radio2").attr("checked", false);
    $("#radio1").removeAttr('checked');
    $("#radio2").removeAttr('checked');
  });

  $("#radio1").click(function(){
    $(".incluir-pedido").addClass("d-none");
    $(".f-incluir").addClass("d-none");
  });
  $("#radio2").click(function(){
    $(".incluir-pedido").addClass("d-none");
    $(".f-incluir").addClass("d-none");
  });  
});
// fim interação pedido de cobertura




$(document).ready(function(){
  $('#link-docs').click(function() {
    $('.internas-buscas').addClass('col-lg-6')
    $('.internas-buscas-2').addClass('col-lg-6')
    $('.internas-buscas-3').addClass('col-lg-12')
    $('.internas-buscas-4').addClass('col-lg-10')
    $('.menu-footer').addClass('col-lg-12')
    $('.menu-footer').addClass('mt-3')
    $('.b-right').removeClass('border-right')
    // $('.conteudo-detalhes').removeClass('border-right')
    // $('.conteudo-detalhes').removeClass('pr-2')
    // $('.conteudo-detalhes').removeClass('mr-2')
  });
});

$(document).ready(function(){
  $('#link-imagens').click(function() {
    $('.internas-buscas').removeClass('col-lg-6')
    $('.internas-buscas-3').removeClass('col-lg-12')
    $('.internas-buscas-4').removeClass('col-lg-10')
    // $('.internas-buscas:first-child').addClass('col-lg-3')
    // $('.internas-buscas-2:first-child').addClass('col-lg-2')
    // $('.internas-buscas-2:first-child').removeClass('col-lg-6')
    $('.b-right').addClass('border-right')
    $('.menu-footer').addClass('col-lg-2')
    $('.menu-footer').addClass('mt-3')
    $('.menu-footer').removeClass('col-lg-12')
    $('.menu-footer').removeClass('mt-3')
    // $('.internas-buscas').addClass('col-lg-2')
    // $('.conteudo-detalhes').addClass('border-right')
    // $('.conteudo-detalhes').addClass('pr-2')
    // $('.conteudo-detalhes').addClass('mr-2')
  });
});

// carregando divs do select
$(function() { //onload aqui
  $('#opcoes').on('change', function() {
    $('.sel').hide();
    let idSelecionado = $(this).val(); //construir o id
    if (idSelecionado != "") $("#" + idSelecionado).show(); //mostrar o elemento
  });

  $('#opcoes').trigger("change"); //aplicar a lógica do change
})
// fim carregando divs do select

// carregando divs do select
$(function() { //onload aqui
  $('#opcoes2').on('change', function() {
    $('.sel').hide();
    let idSelecionado = $(this).val(); //construir o id
    if (idSelecionado != "") $("#" + idSelecionado).show(); //mostrar o elemento
  });

  $('#opcoes2').trigger("change"); //aplicar a lógica do change
})
// fim carregando divs do select



$(document).ready(function(){
  $(".bt-add-itens-pecas").click(function(){
    $(".itens-add-pecas").toggleClass("d-none");
  });
});

$(document).ready(function(){
  $(".bt-add-mao-de-obra").click(function(){
    $(".servicos-add-mao-de-obra").toggleClass("d-none");
    $(".itens-add-pecas").toggleClass("d-none");
    $(".outras-infos").removeClass("d-none");
  });
});

$(document).ready(function(){
  $(".editar-itens").click(function(){
    $(".form-editar-itens").toggleClass("d-none");
  });
});


$(document).ready(function(){
  $(".default").click(function(){
    $(".default").attr("checked");
  });
});

$(document).ready(function(){
  $("#opcoes-regularizacao").click(function(){
    $(".col-sap").removeClass("d-none");
  });
});

$(document).ready(function(){
  $(".btn-mais-info").click(function(){
    $(".mais-info").removeClass("d-none");
    $(".btn-mais-info").addClass("d-none");
    $(".btn-menos-info").removeClass("d-none");
  });

  $(".btn-menos-info").click(function(){
    $(".mais-info").addClass("d-none");
    $(".btn-menos-info").addClass("d-none"); 
    $(".btn-mais-info").removeClass("d-none");    
  });
});



$(document).ready(function(){
  $("#checkbox-table-default").click(function(){
    $("#checkbox-table-default-2").attr('checked', 'checked')
    $("#checkbox-table-default-2").removeAttr('disabled')
    $(".chkLineOne").removeAttr('disabled')
  });
});


// pop-up vincular documentos
function abrir(URL) {
  window.open(URL, 'janela', 'width=795, height=610, top=100, left=699, scrollbars=no, status=no, toolbar=no, location=no, menubar=no, resizable=no, fullscreen=no')
}
// fim pop-up vincular documentos

$(document).ready(function(){
  $("#tabelaProcesso tbody tr").dblclick(function(){
    onclick="window.location.href = 'parecer.html'"
  });
});






