$(document).ready(function() {
  // console.log("Document prêt");

  //Info - login_content.html.twig
  $(function(){
    $(".close").click(function(){
      $("#info_alert_login_content").hide();
      });
  });

  //Info - index.html.twig (Film CRUD)
  $(function(){
    $(".close").click(function(){
      $("#info_alert_index_film").hide();
    });
  });

  //Info - acteur.html.twig (Acteur CRUD)
  $(function(){
    $(".close").click(function(){
      $("#info_alert_index_acteur").hide();
      });
  });

  //Success - confirmed.html.twig
  $(function(){
    $(".close").click(function(){
      $("#success_alert_confirmed").hide();
      });
  });

  //Success - check_email.html.twig
  $(function(){
    $(".close").click(function(){
      $("#success_alert_check_email").hide();
      });
  });

  //Error - login_content.html.twig
  $(function(){
    $(".close").click(function(){
      $("#danger_alert_login_content").hide();
      });
  });

  //Confirmation location
  //Récupération du modal
  var modal = $("#myModal");

  //Ouverture du modal
  $(".btnLocation").click(function(){
    modal.css("display", "block");
  });

  //Récupération des croix
  $(function(){
    $(".close").click(function(){
      modal.css("display", "none");
      });
  });

  //Ancre
  $("#top").click(function(event){
    event.preventDefault(); //Désactivation des propriétés de la balise <a>
    $("html, body").animate({
      scrollTop : 0
    }, 900);
  });
});
