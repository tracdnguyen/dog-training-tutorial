$(document).on('turbolinks:load', function () {
  LoadTutorialsOnTrainersShow();
})

function LoadTutorialsOnTrainersShow () {
  $("a.load_tutorials").on('click', function (e) {
    $.ajax({
      method: "GET",
      url: this.href
    }).success(function(response){
      $('div.tutorials').html(response)
    });
    e.preventDefault();
  })
}
