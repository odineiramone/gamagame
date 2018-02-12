function check_radio() {
  this.firstElementChild.checked = true;
  commit_button = document.querySelector('[name=commit]');
  commit_button.disabled = false;
  commit_button.classList.remove("disabled");
}

window.addEventListener('load', function () {
  document.querySelectorAll('.options ul li').forEach(function(li) {
    li.addEventListener('click', check_radio)
  });
})
