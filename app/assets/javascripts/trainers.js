$( document ).on('turbolinks:load', function () {
  $("a.load_tutorials").on('click', function (e) {
    e.preventDefault();
    alert("You clicked!");
  })
})
