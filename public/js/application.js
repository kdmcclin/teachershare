$(document).ready(function() {
  // step 1
  $("#comment-form").submit(function(event){
    event.preventDefault();
    $.ajax({
      type: "POST",
      url: $(this).attr('action'),
      data: $(this).serialize(),
      dataType: "html"
    }).done(function(response){ //step 6
      $(".comment-display").append(response)
      $("#comment-body").val("");
    });
  });
});
