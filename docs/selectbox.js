window.onload = function() {
  const selectbox = document.querySelector('[name="game"]');
  selectbox.onchange = bossChange;
};

function bossChange(e) {
  let selectElement = document.querySelector('[name="boss"]');
  removeOptions(selectElement);
  if(e.target.value) {
    let bossUrl = `https://arao99.github.io/zenn_scraping/${e.target.value}.json`
    let getBoss = new XMLHttpRequest();
    getBoss.open('GET', bossUrl);
    getBoss.responseType = 'json';
    getBoss.send();
    getBoss.onload = function() {
      const boss = getBoss.response;
      createOptions(boss, selectElement);
    };
  };
};

function removeOptions(element) {
  while (element.firstChild) {
    element.removeChild(element.firstChild);
  };
};

function createOptions(obj, element) {
  const bossList = obj['boss'];
  for (let i = 0; i < bossList.length; i++) {
    let option = document.createElement('option');
    option.textContent = bossList[i]['name'];
    element.appendChild(option);
  };
};
