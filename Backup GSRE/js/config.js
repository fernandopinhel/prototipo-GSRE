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
    sel: $('#sel'),
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
// select box

$(".custom-select").each(function() {
var classes = $(this).attr("class"),
id      = $(this).attr("id"),
name    = $(this).attr("name");
var template =  '<div class="' + classes + '">';
template += '<span class="custom-select-trigger">' + $(this).attr("placeholder") + '</span>';
template += '<div class="custom-options">';
$(this).find("option").each(function() {
template += '<span class="custom-option ' + $(this).attr("class") + '" data-value="' + $(this).attr("value") + '">' + $(this).html() + '</span>';
});
template += '</div></div>';

$(this).wrap('<div class="custom-select-wrapper"></div>');
$(this).hide();
$(this).after(template);
});
$(".custom-option:first-of-type").hover(function() {
$(this).parents(".custom-options").addClass("option-hover");
}, function() {
$(this).parents(".custom-options").removeClass("option-hover");
});
$(".custom-select-trigger").on("click", function() {
$('html').one('click',function() {
$(".custom-select").removeClass("opened");
});
$(this).parents(".custom-select").toggleClass("opened");
event.stopPropagation();
});
$(".custom-option").on("click", function() {
$(this).parents(".custom-select-wrapper").find("select").val($(this).data("value"));
$(this).parents(".custom-options").find(".custom-option").removeClass("selection");
$(this).addClass("selection");
$(this).parents(".custom-select").removeClass("opened");
$(this).parents(".custom-select").find(".custom-select-trigger").text($(this).text());
});

// fim select box
