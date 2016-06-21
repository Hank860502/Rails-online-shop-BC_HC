$(document).ready(function(){
  $(".cart").on("click", function(event){
    event.preventDefault();
    debugger
    var url = $(this).children().attr("href")
    $.ajax({
      url: url,
      type: 'GET',
    }).done(function(data){
      debugger;
    })
  });
});
