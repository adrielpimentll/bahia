
const indicador = document.querySelector(".indicador");
const ativo = document.querySelector(".nav-link.ativo");

function moverIndicador() {
    const rect = ativo.getBoundingClientRect();
    const navRect = ativo.closest(".nav").getBoundingClientRect();

    indicador.style.width = rect.width + "px";
    indicador.style.left = rect.left - navRect.left + 10 + "px";
}

moverIndicador();
window.addEventListener("resize", moverIndicador);
