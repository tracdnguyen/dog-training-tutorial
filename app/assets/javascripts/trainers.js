$(document).on('turbolinks:load', function () {
  LoadCommentsOnTutorialsShow();
  LoadCommentsOnTutorialIndex();
  CreateCommentWithAjax();
})

function LoadCommentsOnTutorialsShow () {
  $("a.loadCommentsAjax").on('click', function (e) {
    e.preventDefault();
    $.get(this.href).success((json) => {
      let $ul = $("div.container.loadAjaxComments ul")
      $ul.html("")

      json.forEach((comment) => {
        let loadComments = new Comment(comment)
        $ul.append(loadComments.createCommentAjax())
      })
    })
  })
}

function LoadCommentsOnTutorialIndex () {
  $("a.tutorial_comments_index").on('click', function (e) {
    e.preventDefault();
    $.get(this.href).success((json) => {
      let tutorial_id = json[0]["tutorial_id"]
      let $ol = $(`div.tutorial_comments${tutorial_id} ol`)
      $ol.html("")

      json.forEach((comment) => {
        let fillComments = new Comment(comment)
        $ol.append(fillComments.commentHTML())
      })
    })
  })
}

function CreateCommentWithAjax () {
  $("#new_comment").on("submit", function(e){
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
