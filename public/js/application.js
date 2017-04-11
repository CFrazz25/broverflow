$(document).ready(function() {

  $("#homepage-shtuff").on('submit', 'form.upvoting', function(event){
    event.preventDefault();
    var question = $(this).parent();
    var url = $(this).attr('action');
    var method = $(this).attr('method');
     var data = { upvote: "+1 lite beer"}
    $.ajax({
      url: url,
      method: method,
      data: data
      }).done(function(response){
     question.find('#vote_total').html(response);

})$.uniqueSort()
    })

    $("#homepage-shtuff").on('submit', 'form.downvoting', function(event){
    event.preventDefault();
    var question = $(this).parent();
    var url = $(this).attr('action');
    var method = $(this).attr('method');
     var data = { downvote: "-1 lite beer"}
    $.ajax({
      url: url,
      method: method,
      data: data
      }).done(function(response){
     question.find('#vote_total').html(response);

})
    })







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
