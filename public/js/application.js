$(document).ready(function() {
  $("#find_trees").hide();
  $(".answer-form").on("submit", function(event) {
    event.preventDefault();
    var url = $(this).attr("action");
    var type = $(this).attr("method");
    var data = $(this).serialize();
    var request = $.ajax({url: url, type: type, data: data});
    request.done(function(response){
      var data = response.series;
      $(".poll-page").hide();
      $(function () {
        $('#container').highcharts({
          chart: {
              type: 'bar'
          },
          title: {
              text: response.title
          },
          xAxis: {
              categories: response.xAxis
          },
          yAxis: {
              title: {
                  text: response.yAxis
              }
          },
          series: [{name:"Votes", data: data}]
        });
      });
      $("#find_trees").show();
    });
  }); //on submit
}); // end doc
