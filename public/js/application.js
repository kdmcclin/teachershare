$(document).ready(function() {

  $("#comment-form").submit(function(event){
    event.preventDefault();
    $.ajax({
      type: "POST",
      url: $(this).attr('action'),
      data: $(this).serialize(),
      dataType: "html"
    }).done(function(response){
      $(".comment-display").append(response)
      $("#comment-body").val("");
    });
  });
});
