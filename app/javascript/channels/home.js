if (document.querySelector('.text-home')) {
  var textWrapper = document.querySelector('.text-home');
  textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

  anime.timeline({loop: true})
    .add({
      targets: '.text-home .letter',
      opacity: [0,1],
      easing: "easeInOutQuad",
      duration: 1000,
      delay: (el, i) => 150 * (i+1)
    }).add({
      targets: '.text-home',
      opacity: 0,
      duration: 1000,
      easing: "easeOutExpo",
      delay: 1000
    });
}

