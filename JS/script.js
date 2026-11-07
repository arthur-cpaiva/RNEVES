/*Sidebar*/

const menuHamburguer = document.querySelector("#menuHamburguer");
const sidebar = document.querySelector(".sidebar");

console.log(sidebar);

menuHamburguer.addEventListener("click", function () {

    sidebar.classList.toggle("ativa");
});

/*Modal para confirmar alterarações*/
const btnConfirmar = document.querySelectorAll(".confirmar");
const modal = document.getElementById("modalConfirmacao");
const btnFechar = document.getElementById("btn-Fechar");
const btnSim = document.getElementById("btn-Sim");
const btnNao = document.getElementById("btn-Nao");

btnConfirmar.forEach(function (botao) {
    botao.addEventListener("click", function () {
        modal.style.display = "flex";
    });
});

btnFechar.addEventListener("click", function () {
    modal.style.display = "none";
})

btnNao.addEventListener("click", function () {
    modal.style.display = "none";
})

btnSim.addEventListener("click", function () {
    modal.style.display = "none";
    
})

modal.addEventListener("click", function (event) {
    if (event.target === modal) {
        modal.style.display = "none";
    }
});