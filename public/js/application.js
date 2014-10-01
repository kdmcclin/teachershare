$(document).ready(function() {
  // $("form").submit(function(event){
  //   formStatus(event);
  // });

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

// var formStatus = function(event){
//   var x = $(".submittable").length;
//   for (i = 0; i < x; i++) {
//     event.preventDefault();
//     if (($(".submittable")[i]).val() === ""){
//       alert("Please make sure that all fields are filled in.");
//     };
//   }
// };
