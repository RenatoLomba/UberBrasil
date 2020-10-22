//Função construtora do formulário de Contato
let Contato = function() {
    this.nome
    this.snome
    this.sexo
    this.email
    this.cidade
    this.estado
    this.mensagem
    this.newsletter
    this.data
    this.avalie
}

//Função que valida as informações do formulário de Contato
function validarContato() {

    //Recebendo e atribuindo ao objeto
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
    contato.data = new Date()
    contato.avalie = document.form_contato.avalie.value

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
          }
          form.classList.add('was-validated');
          validarRegistro() //IMPLEMENTAR VALIDAÇÃO DOS CAMPOS
        }, false);
      });
    }, false);

})();