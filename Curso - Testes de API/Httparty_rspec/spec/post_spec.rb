describe 'Fazer uma requisição' do
  it 'post' do
    #Sem o uso do módulo (Primeira opção)
      # @body = 
      # {
      #   "name": "Luan M",
      #   "last_name": "Linares",
      #   "email": "luancarva@gmail.com",
      #   "age": 32,
      #   "phone": "11989019463",
      #   "address": "Avenida Angélica",
      #   "state": "São Paulo",
      #   "city": "São Paulo"
      # }.to_json 
      #@headers = { 
      # "Accept": 'application/vnd.taskmanager.v2', 
      # 'Content-Type': 'application/json'
      #}
      #@request = HTTParty.post('http://api-de-tarefas.herokuapp.com/contacts', body: @body, headers: @headers )
      #puts @request
     #===========================================================================================================

    #Usando o módulo criado no arquivo contatos_service
    @body = 
      {
        "name": "Luan M",
        "last_name": "Linares",
        "email": "luancarva@gmail.com",
        "age": 32,
        "phone": "11989019463",
        "address": "Avenida Angélica",
        "state": "São Paulo",
        "city": "São Paulo"
      }.to_json 

    @request = Contato.post('/contacts/', body: @body )
    puts @request
  end
end