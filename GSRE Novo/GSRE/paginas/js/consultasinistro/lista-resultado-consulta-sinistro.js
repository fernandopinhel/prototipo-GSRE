$(document).ready(function(){
      $("html, body").animate({ scrollTop: $('.resultado-filtro').offset().top }, 500);
});

$(document).ready(function () {
    size_tab = $("#tabelaProcesso tr").length;
    x= 6;
    $('#tabelaProcesso tr:lt('+x+')').show();
   	$('#btn-load-less').hide();
    $('#btn-load-more').click(function () {
        x= (x+5 <= size_tab) ? x+5 : size_tab;
        $('#tabelaProcesso tr:lt('+x+')').show();
        $('html, body').animate({
            scrollTop: $('#btn-load-more').offset().top
         }, 2000);
        if(x == size_tab){
        	 $('#btn-load-more').hide();
        }
    });
});