function toggleFunctionDetalheProcesso(x) {
    x.classList.toggle("change");
}




$(document).ready(function() {
    $('.checkAll').on('click', function() {
        $(this).closest('table').find('tbody :checkbox').prop(
                'checked', this.checked)
            .closest('tr').toggleClass(
                'selected',
                this.checked);
    });

    $('tbody :checkbox').on('click', function() {
        $(this).closest('tr')
            .toggleClass(
                'selected',
                this.checked); //Classe de seleção na row

        $(this)
            .closest('table')
            .find('.checkAll')
            .prop(
                'checked',
                ($(this)
                    .closest(
                        'table')
                    .find(
                        'tbody :checkbox:checked').length == $(
                        this)
                    .closest(
                        'table')
                    .find(
                        'tbody :checkbox').length)); //Tira / coloca a seleção no .checkAll
    });
});


$(document).ready(function() {
	$('[data-toggle="popover"]').popover();
});


$(document).ready(function(){
  $("#buscar").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#tableAvaliacao tbody tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});

$(document).ready(function(){
  $("#buscarParecer").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#tableParecer tbody tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});

$('[data-tooltip="tooltip"]').tooltip();

$(document).ready(function() {
    $('#link-docs').click(function() {
        if ($("#tab-content-principal").hasClass("col-md-10")) {
          $('#tab-imagens').toggle("slide").attr('class','col-md-7');
          $('#tab-content-principal').attr('class','col-md-4');
          $('.col-xl-3.col-md-6.mb-4').removeClass('col-xl-3 col-md-6 mb-4').addClass('col-md-12 mb-4');
          $('#orcamento .col-md-4').removeClass('col-md-4').addClass('col-md-12');
          $('#tab-documentos').hide();
        }
    });
    
    $('#link-imagens').click(function() {
          $('#tab-imagens').hide();
          $('#tab-content-principal').attr('class','col-md-10');
          $('#tab-documentos').toggle("slide").show();
          $('.col-md-12.mb-4').removeClass('col-md-12 mb-4').addClass('col-xl-3 col-md-6 mb-4');
          $('#orcamento .col-md-12').removeClass('col-md-12').addClass('col-md-4');
    });
});


const current = document.querySelector("#selected");
const thumbs = document.querySelectorAll(".thumbs img");
const opacity = 0.5;

// Set opacity of first image
thumbs[0].style.opacity = opacity;

thumbs.forEach(function(img){
	img.addEventListener("click", imgActivate);
});

function imgActivate(e) {
  // Reset opacity on all thumbs
  thumbs.forEach(function(img) {
	  (img.style.opacity = 1);
  
  });
	  
  // Change current image to source of clicked image
  current.src = e.target.src;

  // Add fadeIn class
  current.classList.add("fade-in");

  // Remove fadeIn class after animation
  setTimeout(function() {
	  current.classList.remove("fade-in"), 500;
  });

  // Change opacity to variable value on line 3
  e.target.style.opacity = opacity;
}