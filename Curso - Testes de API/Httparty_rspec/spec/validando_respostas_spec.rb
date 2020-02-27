describe 'Fazer uma requisição' do
  it 'get' do
    @listar = Contato.get('/contacts/1145')
    #puts @listar.code
    #expect(@listar.code).to eq 200
    #puts @listar.body
    puts @listar.parsed_response['data']['attributes']['name']
    expect(@listar.parsed_response['data']['attributes']['name']).to eq 'bruno batista 26'
    expect(@listar.parsed_response['data']['attributes']['last-name']).to eq 'batista 26'
    expect(@listar.parsed_response['data']['attributes']['email']).to eq 'brunotop226@gmail.com'
    expect(@listar.parsed_response['data']['attributes']['age']).to eq 28
  end
end