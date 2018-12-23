$(document).on('turbolinks:load', function () {
  LoadTutorialsOnTrainersShow();
})

function LoadTutorialsOnTrainersShow () {
  $("a.load_tutorials").on('click', function (e) {
    $.get(this.href).success(function(json){
      let $ul = $("div.tutorials ul")
      $ul.html("")

      json.forEach(function(tutorial){
        $ul.append("<li>" + tutorial.title + "</li>" )
      })
    })
    e.preventDefault();
  })
}
