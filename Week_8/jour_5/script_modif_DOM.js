// Modif 1
function changeTitles() {
  document.querySelectorAll("h1.jumbotron-heading")[0].textContent =
    "Ce que j'ai appris à THP !";
  document.querySelectorAll("section>div>p.lead")[0].textContent =
    "THP est une formation qui, en 3 mois, à plein temps, vous apportera des connaissances actionnables pour vous permettre de voir plus loin. Chez nous, pas de professeurs, pas de locaux, mais un groupe de travail en présentiel. Après 11 semaines, les principaux langages et outils du web n'auront plus de secret pour vous !";
}
changeTitles();

// Modif 2
function changeCallToActions() {
  document.querySelectorAll("section>div>p>a")[0].textContent =
    "OK je veux tester !";
  document.querySelectorAll("section>div>p>a")[0].href =
    "http://www.thehackingproject.org";
  document.querySelectorAll("section>div>p>a")[1].textContent = "Non Merci";
  document.querySelectorAll("section>div>p>a")[1].href =
    "https://www.francetravail.fr/accueil/";
}
changeCallToActions();

// Modif 3
function changeLogoName() {
  document.querySelectorAll("div>a>strong")[0].textContent =
    "The THP Experience";
  document.querySelectorAll("div>a>strong")[0].style.fontSize = "2em";
}
changeLogoName();

// Modif 4
function populateImages() {
  let imagesArray = [
    "https://img.icons8.com/color/480/000000/html-5.png",
    "https://img.icons8.com/color/480/000000/css3.png",
    "https://img.icons8.com/color/480/000000/javascript.png",
    "https://img.icons8.com/color/480/000000/ruby-programming-language.png",
    "https://img.icons8.com/color/480/000000/bootstrap.png",
    "https://img.icons8.com/color/480/000000/github.png",
    "https://i.imgur.com/bJE9Pka.png",
    "https://avatars2.githubusercontent.com/u/25484553?s=200&v=4",
    "https://img.icons8.com/color/480/000000/heroku.png",
  ];
  imagesArray.map((image, i) => {
    document.querySelectorAll("img.card-img-top")[i].src = image;
  });
}
populateImages();

// Modif 5
function deleteLastCards() {
  let last3 = document.querySelectorAll("div.col-md-4");
  let index = last3.length - 3;
  for (let i = last3.length - 1; i >= index; i--) {
    last3[i].parentNode.removeChild(last3[i]);
  }
}
deleteLastCards();

// Modif 6
function changeCardsText() {
  let contents = [
    "L’HyperText Markup Language, généralement abrégé HTML, est le langage de balisage conçu pour représenter les pages web",
    "Les feuilles de style en cascade, généralement appelées CSS de l'anglais Cascading Style Sheets, forment un langage informatique qui décrit la présentation des documents HTML et XML",
    "JavaScript est un langage de programmation de scripts principalement employé dans les pages web interactives mais aussi pour les serveurs. C'est un langage orienté objet à prototype.",
  ];
  contents.map((content, i) => {
    document.querySelectorAll("p.card-text")[i].textContent = content;
  });
}
changeCardsText();

// Modif 7
function changeViewButtons() {
  document
    .querySelectorAll("div.btn-group>.btn:nth-child(odd)")
    .forEach((btn) => {
      btn.classList.add("btn-success");
      btn.classList.remove("btn-outline-secondary");
    });
}
changeViewButtons();

// Modif 8
function addDivRow() {
  let parent = document.querySelector("div.album");
  let extract = document.querySelectorAll("div.col-md-4")[2];
  let ndiv = document.createElement("div");
  ndiv.setAttribute("class", "row d-flex justify-content-center");
  ndiv.appendChild(extract);
  parent.appendChild(ndiv);
}
addDivRow();
