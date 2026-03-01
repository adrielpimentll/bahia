function abrirPopUpObs() {
    document.getElementById("popup-observação").classList.remove("hidden");
}
function fecharPopUp() {
    document.getElementById("popup-observação").classList.add("hidden");
}

document.addEventListener("keydown", function (e) {
    if (e.key === "Escape") {
        fecharPopUp();
    }
});
