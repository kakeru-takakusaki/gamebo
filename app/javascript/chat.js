function pullDown(){
  const obj = document.getElementById('messages');
  obj.scrollTop = obj.scrollHeight;
}

document.addEventListener('turbolinks:load', pullDown)