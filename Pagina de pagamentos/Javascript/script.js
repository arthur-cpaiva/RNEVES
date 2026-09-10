const menuHamburguer = document.querySelector("#menuHamburguer");
const sidebar = document.querySelector(".sidebar");

console.log(sidebar);

menuHamburguer.addEventListener("click", function () {
    
    sidebar.classList.toggle("ativa");
});
