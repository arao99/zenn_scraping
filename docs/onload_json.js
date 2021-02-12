window.onload = function() {
  let getHeroes = new XMLHttpRequest();
  getHeroes.open('GET', 'https://arao99.github.io/zenn_scraping/heroes.json');
  getHeroes.responseType = 'json';
  getHeroes.send();
  getHeroes.onload = function() {
    const heroes = getHeroes.response;
    const divElement = document.querySelector('div');
    createInsertTable(heroes, divElement);
  };
};

function createInsertTable(obj, element) {
  let table = document.createElement('table');
  table.setAttribute('border', '1');
  let headerLine = document.createElement('tr');
  let headerNameColumn = document.createElement('th');
  headerNameColumn.textContent = '名前';
  headerLine.appendChild(headerNameColumn);
  let headerSexColumn = document.createElement('th');
  headerSexColumn.textContent = '性別';
  headerLine.appendChild(headerSexColumn);
  table.appendChild(headerLine);
  for (let i = 0; i < obj.length; i++) {
    let bodyLine = document.createElement('tr');
    let bodyNameColumn = document.createElement('td');
    bodyNameColumn.textContent = obj[i]['name'];
    bodyLine.appendChild(bodyNameColumn);
    let bodySexColumn = document.createElement('td');
    bodySexColumn.textContent = obj[i]['sex'];
    bodyLine.appendChild(bodySexColumn);
    table.appendChild(bodyLine);
  };
  element.appendChild(table);
};
