//Classe do formulário de Contato
class Contato {
    constructor() {
        this.id
        this.nome
        this.sexo
        this.email
        this.endereco
        this.mensagem
        this.newsletter
        this.data
        this.avalie
    }

    guardaInformacoes(nome, sexo, email, endereco, mensagem, newsletter, data, avalie) {
        this.nome = nome
        this.sexo = sexo
        this.email = email
        this.endereco = endereco
        this.mensagem = mensagem
        this.newsletter = newsletter
        this.data = data
        this.avalie = avalie
    }
}

//Classe do formulário de Cadastro
class Cadastro {
    constructor() {
        this.cpf
        this.nome
        this.endereco
        this.email
        this.telefone
        this.senha
        this.tipo_cadastro
    }
}

//Classe do Modal
class Modal {
    constructor() {
        this.header
        this.title
        this.body
        this.button
    }

    moldarModal(header, title, body, button) {
        this.header = header
        this.title = title
        this.body = body
        this.button = button
    }

    modalErro(titulo, mensagem) {
        this.header.classList.add('text-danger')
        this.title.innerHTML = titulo
        this.body.innerHTML = mensagem
        this.button.classList.add('btn-danger')
        $('#MyModal').modal('show')
    }

    modalSucesso(titulo, mensagem) {
        this.header.classList.add('text-success')
        this.title.innerHTML = titulo
        this.body.innerHTML = mensagem
        this.button.classList.add('btn-success')
        $('#MyModal').modal('show')
    }
}
let modal = new Modal()

//Funcão que vai guardar os elementos HTML dentro da classe Modal
function criarModal() {
    
    let header = document.getElementById('modal_header')
    let title = document.getElementById('modal_title')
    let body = document.getElementById('modal_body')
    let button = document.getElementById('modal_button')

    modal.moldarModal(header, title, body, button)

}

//Função que valida as informações do formulário de Contato
function validarContato() {

    //Recebendo e atribuindo ao objeto
    let contato = new Contato()
    let nome = document.form_contato.nome.value + " " + document.form_contato.snome.value
    let sexo = document.form_contato.sexo.value
    let email = document.form_contato.email.value
    let endereco = document.form_contato.cidade.value + ", " + document.form_contato.estado.value 
    let mensagem = document.form_contato.mensagem.value
    let newsletter
    if(document.form_contato.newsletter.checked) {
        newsletter = true
    } else {
        newsletter = false
    }
    let data = new Date()
    let avalie = document.form_contato.avalie.value

    contato.guardaInformacoes(nome, sexo, email, endereco, mensagem, newsletter, data, avalie)

}

//Função para validar os campos invalidos e válidos no formulário de registro
(function() {
    'use strict';
    window.addEventListener('load', function() {
      // Fetch all the forms we want to apply custom Bootstrap validation styles to
      var forms = document.getElementsByClassName('needs-validation');
      // Loop over them and prevent submission
      var validation = Array.prototype.filter.call(forms, function(form) {
        form.addEventListener('submit', function(event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
            modal.modalErro('Erro ao cadastrar usuário', 'Dados preenchidos incorretamente...')
          }
          form.classList.add('was-validated');
        }, false);
      });
    }, false);

})();