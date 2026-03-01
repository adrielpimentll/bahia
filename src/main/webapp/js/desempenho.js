function abrirPopUp() {
    document.getElementById("popup-desempenho").classList.remove("hidden");
}
function fecharPopUp() {
    document.getElementById("popup-desempenho").classList.add("hidden");
}

document.addEventListener("keydown", function (e) {
    if (e.key === "Escape") {
        fecharPopUp();
    }
});
