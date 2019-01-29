$(document).on('turbolinks:load', function () {
  LoadCommentsOnTutorialsShow();
  LoadCommentsOnTutorialIndex();
  CreateCommentWithAjax();
})

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
      console.log(json)
      console.log(json[0]["tutorial_id"])
      let tutorial_id = json[0]["tutorial_id"]
      let $ol = $(`div.tutorial_comments${tutorial_id} ol`)
      $ol.html("")

      json.forEach(function(comment){
        let fillComments = new Comment(comment)
        $ol.append(fillComments.commentHTML())
      })
    })
  })
}

function CreateCommentWithAjax () {
  $("#new_comment").on("submit", function(e){
    alert("something")
    console.log(this)
    $.ajax({
      type: ($("input[name='_method']").val() || this.method),
      url: this.action,
      data: $(this).serialize(),
      success: function(response){
      }
    })
    e.preventDefault();
  })
}
