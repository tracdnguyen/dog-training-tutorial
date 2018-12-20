$(document).on('turbolinks:load', function () {
  LoadTutorialsOnTrainersShow();
})

function LoadTutorialsOnTrainersShow () {
  $("a.load_tutorials").on('click', function (e) {
    $.ajax({
      method: "GET",
      url: this.href
    }).done(function(data){
      console.log(data)
    });
    e.preventDefault();
  })
}
