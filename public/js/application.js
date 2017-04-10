$(document).ready(function() {

  // $("#homepage-shtuff").on('submit', 'form', function(event){
  //   event.preventDefault();
  //   var form = $(this);
  //   var url = form.attr('action');
  //   var method = form.attr('method');
  //   $.ajax{(
  //     url: url,
  //     method: method
  //     )}
  // }).done(function(response){
  //   console.log(response);
  //   form.closest('#question a span').html(response);
  // })
  // Having trouble with ajax on changing votes, might be too much going on in votes controller. 


  $( "#login" ).mouseenter(function() {
  $( this ).html("you think you can handle it bro?");
$( "#login" ).mouseleave(function() {
  $( this ).html("login");
});
});
$( ".logout" ).mouseenter(function() {
  $('a.nav').html("don't go bro");
});
$( ".logout" ).mouseleave(function() {
  $('a.nav').html("Brohome");
});

  $("#login").on("click", function(event){
    event.preventDefault();
    $.ajax({
      url: $(this).attr("href"),
      method: "GET"
    })
    .done(function(response){
      $(".register").append(response);
      $("header").css("display", "inline")
      $(".register h3").hide();
    })
  })

  $("#new_user").on("click", function(event){
    event.preventDefault();
    $.ajax({
      url: $(this).attr("href"),
      method: "GET"
    })
    .done(function(response){
      $(".register").append(response);
      $("header").css("display", "inline")
      $(".register h3").hide();
    })
  })

  $("#q-link").on("click", function(event){
    event.preventDefault();
    $.ajax({
      url: $(this).attr("href"),
      method: "GET"
    })
    .done(function(response){
      $("#new-q").append(response);
      $("#new-q h3").hide();
    })
  })

  
});
