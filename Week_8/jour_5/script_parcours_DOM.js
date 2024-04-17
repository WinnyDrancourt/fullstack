// Nombre de p dans le document HTML
console.log(document.getElementsByTagName("p").length);

// Contenu text de l'element id coucou
console.log(document.getElementById("coucou").textContent);

//URL vers laquelle point le 3eme element a
console.log(document.getElementsByTagName("a")[2].href);

// Cb d'element comptemoi
console.log(document.getElementsByClassName("compte-moi").length);

// cb d'element li avec la classe compte-moi
console.log(document.querySelectorAll("li.compte-moi").length);

// cb d'element li dans ol
console.log(document.querySelectorAll("ol>li.compte-moi").length);

//jeu de piste
console.log(document.querySelectorAll("div>ul:nth-child(2)>li")[0].textContent);
