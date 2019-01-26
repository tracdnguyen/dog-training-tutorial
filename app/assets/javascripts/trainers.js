$(document).on('turbolinks:load', function () {
  LoadCommentsOnTrainersShow();
  LoadCommentsOnTutorialsShow();
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

function LoadCommentsOnTutorialsShow () {
  $("a.load_tutorial_comments").on('click', function (e) {
    e.preventDefault();
    $.get(this.href).success(function(json){
      let $ol = $("div.panel-body ol")
      $ol.html("")

      json.forEach(function(comment){
        let newComment = new Comment(comment)
        $ol.append(newComment.commentHTML())
      })
    })
  })
}

function LoadCommentsOnTutorialIndex () {
  $("a.tutorial_comments_index").on('click', function (e) {
    e.preventDefault();
    $.get(this.href).success(function(json){
      let $ol = $("div.tutorial_comments ol")
      $ol.html("")

      json.forEach(function(comment){
        let fillComments = new Comment(comment)
        $ol.append(fillComments.commentHTML())
      })
    })
  })
}
