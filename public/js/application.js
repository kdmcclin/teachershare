$(document).ready(function() {
  $("form").submit(function(event){
    formStatus();
  });

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

var formStatus = function(event){
  if ($(".submittable").val("")){
    alert("Please make sure that all fields are filled in.");
  }
};
