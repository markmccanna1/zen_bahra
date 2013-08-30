//= require jquery
//= require jquery_ujs
//= require_tree .
$(document).ready(function(){
  $('#button').on('click', function(event){
    event.preventDefault();
    var form = $('<form><input id="title" type="text" name="input[title]" placeholder="title">' +
                '<br><textarea name="input[body]"></textarea><br>' + 
                '<input id="tag" type="text" name="input[tag]" placeholder="tag(, tag...)">' +
                '<input value="post question" type="submit"></form>')

    $('.questions').prepend(form)

    $('form').on('submit', function(event){
      
      event.preventDefault();
      console.log(this)
      alert('hello')
      $(this).hide()
      var title = $("#title").val()
      var body = $("textarea").val()
      var tags = $('#tag').val()
      
      $.post('/questions', {title: title, body: body, tag: tags}, function(response){
          alert(response)
        // var html = $('<h2><a href="/questions/"' + response + '>' + title + '</a></h2>')
        // $('.questions').prepend(html)
      })
    })
  })
})
