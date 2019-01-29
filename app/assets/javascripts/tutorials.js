class Tutorial {
  constructor(obj) {
    this.id = obj.id
    this.content = obj.content
    this.title = obj.title
    this.video_link = obj.video_link
    this.comments = obj.comments
  }
}

Tutorial.prototype.formatVideoLink = () => {
  return (`
    Link To Video: <a href="${this.video_link}">${this.video_link}</a>
  `)
}
