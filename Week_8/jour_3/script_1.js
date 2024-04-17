function bonjourMonde() {
  return "Bonjour Monde !";
}
console.log(bonjourMonde());
document.getElementById("bonjour").textContent = bonjourMonde();

function validInput1() {
  let pame = document.getElementById("pame").value;
  let miam = "Bonjour" + " " + pame + "!!!";
  document.getElementById("miam").textContent = miam;
}
