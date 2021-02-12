window.onload = function() {
  let getHeroes = new XMLHttpRequest();
  getHeroes.open('GET', 'https://arao99.github.io/zenn_scraping/heroes.html');
  getHeroes.send();
  getHeroes.onload = function() {
    const heroes = getHeroes.response;
    const divElement = document.querySelector('div');
    divElement.insertAdjacentHTML('afterbegin', heroes);
  };
};
