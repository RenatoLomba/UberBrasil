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
    contato.newsletter = document.form_contato.newsletter.value
    
    if(contato.newsletter == 'marcado') {
        alert('marcado')
    } else {
        alert('não marcado')
    }

    /*let lista = Array('nome', 'snome', 'newsletter')
    lista['nome'] = document.form_contato.nome.value
    lista['snome'] = document.form_contato.snome.value
    lista['nome'] = document.form_contato.nome.value
    alert(lista['nome'])*/
}