// Init books array
const books = [
  { title: "Gatsby le magnifique", id: 133712, rented: 39 },
  { title: "A la recherche du temps,perdu", id: 237634, rented: 28 },
  { title: "Orgueil & Préjugés", id: 873495, rented: 67 },
  { title: "Les frères Karamazov", id: 450911, rented: 55 },
  { title: "Dans les forêts de Sibérie", id: 8376365, rented: 15 },
  { title: "Pourquoi j'ai mangé mon père", id: 450911, rented: 45 },
  { title: "Et on tuera tous les affreux", id: 67565, rented: 36 },
  { title: "Le meilleur des mondes", id: 88847, rented: 58 },
  { title: "La disparition", id: 364445, rented: 33 },
  { title: "La lune seule le sait", id: 63541, rented: 43 },
  { title: "Voyage au centre de la Terre", id: 4656388, rented: 38 },
  { title: "Guerre et Paix", id: 748147, rented: 19 },
];

//-Has every book been borrowed at least once ?
function borrowedOneTime(books) {
  return books.every((book) => book.rented > 0);
}
console.log("All borrowed ?");
console.log(borrowedOneTime(books));
document.getElementById("true").innerHTML = borrowedOneTime(books);

//What is the most borrowed book ?
function sortBorrowed(books) {
  return (sortBook = books.sort((a, b) => {
    if (a.rented < b.rented) return 1;
    if (a.rented > b.rented) return -1;
    return 0;
  }));
}
console.log("most borrowed");
console.log(sortBorrowed(books)[0]);
const resultMost = document.getElementById("most");
resultMost.innerHTML =
  "<div>" + JSON.stringify(sortBorrowed(books)[0], null, 2) + "</div>";

//What is the least borrowed book ?
console.log("least borrowed");
console.log(sortBorrowed(books)[sortBook.length - 1]);
const resultLeast = document.getElementById("least");
resultLeast.innerHTML =
  "<div>" +
  JSON.stringify(sortBorrowed(books)[sortBook.length - 1], null, 2) +
  "</div>";

//Find the book with id : 873495
function findById(books) {
  let bookId = 873495;
  return books.find((book) => book.id == bookId);
}
console.log("Find 873495");
console.log(findById(books));
const resultFind = document.getElementById("find");
resultFind.innerHTML =
  "<div>" + JSON.stringify(findById(books), null, 2) + "</div>";

//Delete the book 133712
function deleteById(books) {
  let bookId = 133712;
  return books.filter((book) => book.id !== bookId);
}
console.log("delete 133712");
console.log(deleteById(books));
const resultDelete = document.getElementById("delete");
resultDelete.innerHTML =
  "<div>" + JSON.stringify(deleteById(books), null, 2) + "</div>";

//Sort by alpha.
function sortByAlpha(books) {
  return deleteById(books).sort((a, b) => {
    if (a.title < b.title) return -1;
    if (a.title > b.title) return 1;
    return 0;
  });
}
console.log("Sort without 133712");
console.log(sortByAlpha(books));
const resultSortBook = document.getElementById("sortbook");
resultSortBook.innerHTML =
  "<div>" + JSON.stringify(sortByAlpha(books), null, 2) + "</div>";
