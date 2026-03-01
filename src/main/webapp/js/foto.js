function abrirFoto() {
    document.getElementById("popup-foto").classList.remove("hidden");
}
function fecharFoto() {
    document.getElementById("popup-foto").classList.add("hidden");
}

document.addEventListener("keydown", function (e) {
    if (e.key === "Escape") {
        fecharFoto();
    }
});