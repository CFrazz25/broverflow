$(document).ready(function() {
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
