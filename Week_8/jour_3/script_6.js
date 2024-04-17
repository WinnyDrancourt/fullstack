/*Transforme ARN in list of amino acid
-CCGUCGUUGCGCUACAGC
-CCUCGCCGGUACUUCUCG*/

// Transforme -CCGUCGUUGCGCUACAGC
const firstArray = ["UCCCCCUUGUUCCGCUAC"];

function splitThird1(firstArray) {
  let transArray = [];
  let input = firstArray[0];
  for (let i = 0; i < input.length; i += 3) {
    let group = input.substring(i, i + 3);
    transArray.push(group);
  }
  return transArray;
}

// Transforme -CCUCGCCGGUACUUCUCG
const secondArray = ["CCUCGCCGGUACUUCUCG"];

function splitThird2(secondArray) {
  let transArray = [];
  let input = secondArray[0];
  for (let i = 0; i < input.length; i += 3) {
    let group = input.substring(i, i + 3);
    transArray.push(group);
  }
  return transArray;
}

//Transforme les groupes de 3 en acide :

function transform(group) {
  switch (group) {
    case "UCU":
    case "UCC":
    case "UCA":
    case "UCG":
    case "AGU":
    case "AGC":
      return "Serine";

    case "CCU":
    case "CCC":
    case "CCA":
    case "CCG":
      return "Proline";

    case "UUA":
    case "UUG":
      return "Leucine";

    case "UUU":
    case "UUC":
      return "Phenylalanine";

    case "CGU":
    case "CGC":
    case "CGA":
    case "CGG":
    case "AGA":
    case "AGG":
      return "Arginine";

    case "UAU":
    case "UAC":
      return "Tyrosine";
  }
}

// Les resulats

console.log("array = CCGUCGUUGCGCUACAGC ");
console.log(splitThird1(firstArray));
console.log(splitThird1(firstArray).map(transform));
const resultFirstDna = document.getElementById("fdna");
resultFirstDna.innerHTML =
  "<div>" +
  JSON.stringify(splitThird1(firstArray).map(transform), null, 2) +
  "</div>";

console.log("array = CCUCGCCGGUACUUCUCG ");
console.log(splitThird2(secondArray));
console.log(splitThird2(secondArray).map(transform));
const resultSecondDna = document.getElementById("sdna");
resultSecondDna.innerHTML =
  "<div>" +
  JSON.stringify(splitThird2(secondArray).map(transform), null, 2) +
  "</div>";
