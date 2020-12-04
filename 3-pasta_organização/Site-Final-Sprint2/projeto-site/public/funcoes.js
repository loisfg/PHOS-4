let cnpj_usuario;
let nome_usuario;
let representante_usuario;

function redirecionar_login() {
    window.location.href = 'login.html';
}

function verificar_autenticacao() {

    cnpj_usuario = sessionStorage.cnpj_usuario_meuapp;
    nome_usuario = sessionStorage.nome_usuario_meuapp;
    representante_usuario = sessionStorage.representante_usuario_meuapp;

    if (cnpj_usuario == undefined)  {
        redirecionar_login();
    } else {
        b_usuario.innerHTML = representante_usuario;
        validar_sessao();
    }
    
}

function logoff() {
    finalizar_sessao();
    sessionStorage.clear();
    redirecionar_login();
}

function validar_sessao() {
    fetch(`/usuarios/sessao/${cnpj}`, {cache:'no-store'})
    .then(resposta => {
        if (resposta.ok) {
            resposta.text().then(texto => {
                console.log('Sessão :) ', texto);    
            });
        } else {
            console.error('Sessão :.( ');
            logoff();
        } 
    });    
}

function finalizar_sessao() {
    fetch(`/usuarios/sair/${cnpj_usuario}`, {cache:'no-store'}); 
}