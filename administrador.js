const uModal = document.getElementById("modal-usuario");
const uCancelar = document.getElementById("uCancelar");
const bUsuario = document.getElementById("bUsuario");

const auModal = document.getElementById("modal-aUsuario");
const auCancelar = document.getElementById("auCancelar");
const baUsuario = document.getElementById("aUsuario");


const aModal = document.getElementById("modal-administrador")
const aCancelar = document.getElementById("aCancelar");
const bAdministrador = document.getElementById("bAdministrador");

const aaModal = document.getElementById("modal-aAdministrador")
const aaCancelar = document.getElementById("aACancelar");
const baAdministrador = document.getElementById("aAdministrador");


const cModal = document.getElementById("modal-carro");
const cCancelar = document.getElementById("cCancelar");
const bCarro = document.getElementById("bCarro");

const acModal = document.getElementById("modal-aCarro");
const acCancelar = document.getElementById("acCancelar");
const aCarro = document.getElementById("aCarro");


const pModal = document.getElementById("modal-producto");
const pCancelar = document.getElementById("pCancelar");
const bProducto = document.getElementById("bProducto");

const apModal = document.getElementById("modal-aProducto");
const apCancelar = document.getElementById("apCancelar");
const aProducto = document.getElementById("aProducto");


const oModal = document.getElementById("modal-oferta");
const oCancelar = document.getElementById("oCancelar");
const bOferta = document.getElementById("bOferta");

const aoModal = document.getElementById("modal-aOferta");
const aoCancelar = document.getElementById("aoCancelar");
const aOferta = document.getElementById("aOferta");


bUsuario.addEventListener("click", () => {
    uModal.classList.add("modal-usuario--show");
});

uCancelar.addEventListener("click", () => {
    uModal.classList.remove("modal-usuario--show");
});

baUsuario.addEventListener("click", () => {
    auModal.classList.add("modal-aUsuario--show");
});

auCancelar.addEventListener("click", () => {
    auModal.classList.remove("modal-aUsuario--show");
});



bAdministrador.addEventListener("click", () => {
    aModal.classList.add("modal-administrador--show");
});

aCancelar.addEventListener("click", () => {
    aModal.classList.remove("modal-administrador--show");
});

baAdministrador.addEventListener("click", () => {
    aaModal.classList.add("modal-aAdministrador--show");
});

aACancelar.addEventListener("click", () => {
    aaModal.classList.remove("modal-aAdministrador--show");
});



bCarro.addEventListener("click", () => {
    cModal.classList.add("modal-carro--show");
});

cCancelar.addEventListener("click", () => {
    cModal.classList.remove("modal-carro--show");
});

aCarro.addEventListener("click", () => {
    acModal.classList.add("modal-aCarro--show");
});

acCancelar.addEventListener("click", () => {
    acModal.classList.remove("modal-aCarro--show");
});




bProducto.addEventListener("click", () => {
    pModal.classList.add("modal-producto--show");
});

pCancelar.addEventListener("click", () => {
    pModal.classList.remove("modal-producto--show");
});

aProducto.addEventListener("click", () => {
    apModal.classList.add("modal-aProducto--show");
});

apCancelar.addEventListener("click", () => {
    apModal.classList.remove("modal-aProducto--show");
});



bOferta.addEventListener("click", () => {
    oModal.classList.add("modal-oferta--show");
});

oCancelar.addEventListener("click", () => {
    oModal.classList.remove("modal-oferta--show");
});

aOferta.addEventListener("click", () => {
    aoModal.classList.add("modal-aOferta--show");
});

aoCancelar.addEventListener("click", () => {
    aoModal.classList.remove("modal-aOferta--show");
});