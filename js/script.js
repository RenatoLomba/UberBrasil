//Objeto do formulário de Contato
let Contato = function() {
    this.nome
    this.snome
    this.sexo
    this.email
    this.cidade
    this.estado
    this.mensagem
    this.newsletter
}

function validarContato() {

    let contato = new Contato()
    contato.nome = document.form_contato.nome.value
    contato.snome = document.form_contato.snome.value
    contato.sexo = document.form_contato.sexo.value
    contato.email = document.form_contato.email.value
    contato.cidade = document.form_contato.cidade.value
    contato.estado = document.form_contato.estado.value
    contato.mensagem = document.form_contato.mensagem.value
    if(document.form_contato.newsletter.checked) {
        contato.newsletter = true
    } else {
        contato.newsletter = false
    }
    
    alert(contato.newsletter)
    
}