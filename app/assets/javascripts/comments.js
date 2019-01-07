class Comment {
  constructor(obj) {
    this.tutorial_id = obj.tutorial_id;
    this.trainer_id = obj.trainer_id;
    this.content = obj.content;
  }
}

Comment.prototype.commentHTML = function () {
  return (`
    <li>${this.content}</li>
  `)
}
