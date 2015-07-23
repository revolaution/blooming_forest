$(document).ready(function() {
  $(".answer-form").on("submit", function(event) {
    event.preventDefault();
    var url = $(this).attr("action");
    var type = $(this).attr("method");
    var data = $(this).serialize();
    var request = $.ajax({url: url, type: type, data: data});
    request.done(function(response){
      // highcharts file in layout
    })
  });
});
