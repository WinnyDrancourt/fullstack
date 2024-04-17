// Ask @user a number to decide number of floor
var floor = prompt("Choisi un nombre d'etage");

// Convert floor into Integer
Number(floor);

function pyramid(floor) {
  let result = "";
  for (let count = 1; count <= floor; count++) {
    let str = "©";
    let space = " ";
    result +=
      space.repeat(floor - count) + str.repeat(count * 2 - 1) + count + "<br>";
  }
  return result;
}
console.log(pyramid(floor));

function validInput3() {
  let floor = document.getElementById("floor").value;
  let render = pyramid(floor);
  document.getElementById("render").innerHTML = render;
}
