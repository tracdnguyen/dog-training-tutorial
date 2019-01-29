class Tutorial {
  constructor(obj) {
    this.id = obj.id;
    this.content = obj.content;
    this.title = obj.title;
    this.video_link = obj.video_link;
    this.comments = obj.comments;
  }
}

Tutorial.prototype.formatVideoLink = function () {
  return (`
    Link To Video: <a href="${this.video_link}">${this.video_link}</a>
  `)
}

Tutorial.prototype.showNextComments = (comment) => {
  return (`
    <li>
      <div class="container">
        <div class="panel panel-default">
          <div class="panel-heading">
            <strong>${comment.trainer_email}</strong> <span class="text-muted"> said: </span>
          </div>
          <div class="panel-body">
            ${comment.content}</br>
          </div>
        </div>
      </div>
    </li>
  `)
}
