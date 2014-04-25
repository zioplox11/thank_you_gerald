
var GeraldApp = {

onReady: function(){

  $('h1').click(GeraldApp.changeText)
  },

  changeText: function(event) {
    var myText = $(this).text();
    h1tag = this;

     $.ajax({
          url: "/reverse",
          type: "POST",
          dataType: "json",
          data: {
            content: myText
          },
          context: this,
        }).done(function(frog) {
          $(h1tag).text(frog.content)
        })
  }

}

$(document).ready(GeraldApp.onReady);



