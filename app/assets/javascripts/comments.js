class Comment {
  constructor(obj) {
    this.tutorial_id = obj.tutorial_id;
    this.trainer_id = obj.trainer_id;
    this.content = obj.content;
    this.trainer_email = obj.trainer_email
  }
}

Comment.prototype.commentHTML = function () {
  return (`
    <li>${this.content}</li>
  `)
}

Comment.prototype.createCommentAjax = function() {
  return (`
    <li>
      <div class="container">
        <div class="panel panel-default">
          <div class="panel-heading">
            <strong>${this.trainer_email}</strong> <span class="text-muted"> said: </span>
          </div>
          <div class="panel-body">
            ${this.content}</br>
          </div>
        </div>
      </div>
    </li>
  `)
}
