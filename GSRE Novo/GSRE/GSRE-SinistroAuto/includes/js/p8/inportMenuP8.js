$(document).ready(function () {
    ativarThumbs()
    eventosBotoes()
});

window.addEventListener('load', function () {
    /* if (Math.ceil(this.scrollTop) + this.offsetHeight == this.scrollHeight) {
     }*/
    inicarArquivos()
});

function ativarThumbs() {
    var current = document.querySelector("#selected");
    var thumbs = document.querySelectorAll(".thumbs img");
    var opacity = 0.5;
    var tiposImagens = new Array("jpg", "jpeg", "png");

    // Set opacity of first image
    //thumbs.length > 0 ? thumbs[0].style.opacity = opacity : '';
    if (thumbs.length > 0) {
        thumbs[0].style.opacity = opacity
        current.src = thumbs[0].src;
    }
    Array.prototype.slice.call(thumbs).forEach(function (img) {
        img.addEventListener("click", imgActivate);
        img.style.cursor = 'pointer';
    })

    function imgActivate(e) {
        // typeof cropper1.destroy() === 'undefined' ? cropper1.destroy() : ''

        // Reset opacity on all thumbs
        Array.prototype.slice.call(thumbs).forEach(function (img) {
            (img.style.opacity = 1);

        });

        // Change current image to source of clicked image
        current.src = e.target.src;
        $('#selected').attr("data-tipodocumento", $(this).data("tipodocumento"))
        $('#selected').attr("data-codigodocumento", $(this).data("codigodocumento"))

        if (tiposImagens.indexOf($(this).data("tipodocumento")) != -1) {
            $('.toolbar-imagens').css({ display: "block" });
            $('.toolbar-arquivos').css({ display: "none" });
        } else {
            $('.toolbar-imagens').css({ display: "none" });
            $('.toolbar-arquivos').css({ display: "block" });
        }

        // Add fadeIn class
        current.classList.add("fade-in");

        // Remove fadeIn class after animation
        setTimeout(function () {
            current.classList.remove("fade-in"), 500;
        });

        // Change opacity to variable value on line 3
        e.target.style.opacity = opacity;
    }

    $(".thumbs").scroll(function () {
        if ($(this).scrollTop() + $(this).innerHeight() >= this.scrollHeight) {
            console.log('final2')
            //inicarArquivos();
        }
    });

}

var cropper1;
var image;
var imagem = $('#modalAjusteImagem').find('#image');
var URL_BUSCAR_IMAGENS = "/GSRE-SinistroAuto/fileNetHandler/getFile.do?codigoDocumento=";
function iniciarCrop() {
    image = $('#selected');
    imagem[0].src = image[0].src;
    imagem.attr("data-tipodocumento", image.data("tipodocumento"));
    imagem.attr("data-codigodocumento", image.data("codigodocumento"));

    cropper1 = new Cropper(imagem[0], {
        viewMode: 2,
        background: false,
        crop: function (event) {
            image[0].addEventListener('zoom', function (event) {

                event.detail.ratio > event.detail.oldRatio

            });
        },
        ready: function () {
            this.cropper.crop();
            cropper1.clear();
            cropper1.setDragMode("move")
        },
    });
}

function eventosBotoes() {

    $('#abrirPopUp').click(function (e) {
        var imagemAbrir = $('#selected')[0];
        var popup = window.open('', 'Visualização de Imagem', 'title=Visualização de Imagens, scrollbars=no,status=no,toolbar=no,resizable=no,location=no,menu=no,width=800,height=600');
        popup.document.write('<img src="' + imagemAbrir.src + '" style="width:100%; height: 100%;"/>');

    });

    $('#girarEsquerda').click(function () {
        cropper1.rotate(-90)

    });

    $('#girarDireita').click(function () {
        cropper1.rotate(90)

    });

    $('#zoomIn').click(function () {
        cropper1.zoom(0.2)

    });

    $('#zoomOut').click(function () {
        cropper1.zoom(-0.2)

    });

    $('#cortar').click(function (e) {
        cropper1.setDragMode("crop")

    });

    $('#mover').click(function (e) {
        cropper1.clear();
        cropper1.setDragMode("move")

    });

    $('#editarImagem').click(function (e) {
        iniciarCrop();
        $('#modalAjusteImagem').modal({
            backdrop: false
        })

    });
    $('#download').click(function (e) {
        var listaDocumentos = $('.thumbs > img');
        var codigoDocumento = $('#selected').data("codigodocumento")
        $.each(listaDocumentos, function () {
            if ($(this).data("codigodocumento") == codigoDocumento) {
                e.preventDefault();
                var preparaDownload = document.createElement("a");
                preparaDownload.download = "Arquivo";
                preparaDownload.href = URL_BUSCAR_IMAGENS + codigoDocumento;
                preparaDownload.click();
            }
        })

    });

    $('#concluirEdicao').click(function (e) {
        var canvas1 = cropper1.getCroppedCanvas()
        var url = canvas1.toDataURL();
        image[0].src = url;
        $('#modalAjusteImagem').modal('hide');

        atualizarListaImagens(image.data("codigodocumento"), url);
        /*
        canvas1.toBlob(function (blob) {
            var formData = new FormData();

            formData.append('avatar', blob, 'avatar.jpg');
            Ajax para envio das imagens ao p8
            $.ajax('', {
                method: 'POST',
                data: formData,
                processData: false,
                contentType: false,

                success: function () {
                    //FInalizar Loading
                },

                error: function () {
                    //Mostrar alerta de erro
                },

                complete: function () {

                },
            });
        })*/

    });

    $('#modalAjusteImagem').on('hide.bs.modal', function (e) {
        cropper1.destroy();
    })
}

function inicarArquivos() {
    for (var i = 0; i < 5; i++) {
        trazerArquivosP8(i)

    }
}

function trazerArquivosP8(codigoDocumento) {
    $.ajax({
        type: "GET",
        url: URL_BUSCAR_IMAGENS + codigoDocumento,
        //data: "data",
        //dataType: "dataType",
        success: function (response, status, xhr) {
            var tipoDocumento = xhr.getResponseHeader('Content-Disposition');
            tipoDocumento = tipoDocumento.substring(tipoDocumento.lastIndexOf(".") + 1, tipoDocumento.length)

            $('.thumbs').append(
                "<img src='" + verificarTipoArquivo(tipoDocumento, codigoDocumento) + "'" +
                "data-codigodocumento='" + codigoDocumento + "' data-tipodocumento='" + tipoDocumento + "'>"
            );
            ativarThumbs()
            /*var reader = new FileReader();
            reader.readAsDataURL($(this)); 
            var base64data = reader.result;                
            console.log(base64data);*/
        }
    });


}

function verificarTipoArquivo(tipoDocumento, params) {
    var documento;

    switch (tipoDocumento) {
        case 'pdf':
            documento = '/GSRE-SinistroAuto/includes/imagens/image-pdf.png';
            break;
        case 'doc':
            documento = '/GSRE-SinistroAuto/includes/imagens/image-doc.png';
            break;
        default:
            documento = "/GSRE-SinistroAuto/fileNetHandler/getFile.do?codigoDocumento=" + params
    }

    return documento;

}

function atualizarListaImagens(codigoDocumento, url) {

    var listaDocumentos = $('.thumbs > img');
    $.each(listaDocumentos, function () {
        $(this).data("codigodocumento") == codigoDocumento ? $(this)[0].src = url : '';
    })

}

