function pullDown(){
  const obj = document.getElementById('messages');
  obj.scrollTop = obj.scrollHeight;

  $('.chat-list-ul li').hover(function(){
    $("ul:not(:animated)", this).slideDown();
  }, function(){
    $("ul.drop-element",this).slideUp();
  });
}

document.addEventListener('turbolinks:load', pullDown)

// $(document).ready(function(){
// })