$(document).on('turbolinks:load', function () {
  LoadCommentsOnTrainersShow();
})

function LoadCommentsOnTrainersShow () {
  $("a.load_comments").on('click', function (e) {
    $.get(this.href).success(function(json){
      let $ul = $("div.comments ul")
      $ul.html("")

      json.forEach(function(comment){
        $ul.append("<li>" + comment.content + "</li>" )
      })
    })
    e.preventDefault();
  })
}
