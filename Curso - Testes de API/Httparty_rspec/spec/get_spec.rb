describe 'Fazer uma requisição' do
  it 'get' do
    #Sem o uso do módulo (Primeira opção)
      #@variavel = HTTParty.get('urlaserbuscada')

    #Usando o módulo criado no arquivo contatos_service
    @listar = Contato.get('/contacts/1149')
    puts @listar
  end
end