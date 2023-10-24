/*Criado apenas para o botão de Anexar arquivos no pagina Novo Requerimento */
document.querySelector('#anexo').addEventListener('change', function (){
          document.querySelector('.arquivo_anexado').textContent = this.files[0].name;
}
)