// Init array
const entrepreneurs = [
  { first: "Steve", last: "Jobs", year: 1955 },
  { first: "Oprah", last: "Winfrey", year: 1954 },
  { first: "Bill", last: "Gates", year: 1955 },
  { first: "Sheryl", last: "Sandberg", year: 1969 },
  { first: "Mark", last: "Zuckerberg", year: 1984 },
  { first: "Beyonce", last: "Knowles", year: 1981 },
  { first: "Jeff", last: "Bezos", year: 1964 },
  { first: "Diane", last: "Hendricks", year: 1947 },
  { first: "Elon", last: "Musk", year: 1971 },
  { first: "Marissa", last: "Mayer", year: 1975 },
  { first: "Walt", last: "Disney", year: 1901 },
  { first: "Larry", last: "Page", year: 1973 },
  { first: "Jack", last: "Dorsey", year: 1976 },
  { first: "Evan", last: "Spiegel", year: 1990 },
  { first: "Brian", last: "Chesky", year: 1981 },
  { first: "Travis", last: "Kalanick", year: 1976 },
  { first: "Marc", last: "Andreessen", year: 1971 },
  { first: "Peter", last: "Thiel", year: 1967 },
];

// Born in 70's
function entrepreneursDesAnnees70(entrepreneurs) {
  return entrepreneurs.filter(
    (entrepreneur) => entrepreneur.year >= 1970 && entrepreneur.year <= 1979,
  );
}
console.log("Born in 70's");
console.log(entrepreneursDesAnnees70(entrepreneurs));
const resultBorn = document.getElementById("born");
resultBorn.innerHTML =
  "<div>" +
  JSON.stringify(entrepreneursDesAnnees70(entrepreneurs), null, 2) +
  "</div>";

//Array with first & last name
function deleteYear(entrepreneurs) {
  return entrepreneurs.map((entrepreneur) => {
    let { year, ...rest } = entrepreneur;
    return rest;
  });
}
console.log("First & Last Name");
console.log(deleteYear(entrepreneurs));
const resultFirstLast = document.getElementById("first");
resultFirstLast.innerHTML =
  "<div>" + JSON.stringify(deleteYear(entrepreneurs), null, 2) + "</div>";

//Age of entrepreneur
const actualYear = new Date().getFullYear();
function ageOfEntrepreneur(entrepreneurs, actualYear) {
  return entrepreneurs.map((entrepreneur) => {
    let age = actualYear - entrepreneur.year;
    return { ...entrepreneur, age };
  });
}
console.log("Age !");
console.log(ageOfEntrepreneur(entrepreneurs, actualYear));
const resultAge = document.getElementById("age");
resultAge.innerHTML =
  "<div>" +
  JSON.stringify(ageOfEntrepreneur(entrepreneurs, actualYear), null, 2) +
  "</div>";

//Sort by alpha last_name
function sortLastName(entrepreneurs) {
  return entrepreneurs.sort((a, b) => {
    if (a.last < b.last) return -1;
    if (a.last > b.last) return 1;
    return 0;
  });
}
console.log("Sort by Alpha.");
console.log(sortLastName(entrepreneurs));
const resultSort = document.getElementById("sort");
resultSort.innerHTML =
  "<div>" + JSON.stringify(sortLastName(entrepreneurs), null, 2) + "</div>";
