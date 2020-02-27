describe 'Fazer uma requisição' do
  it 'Delete' do
    Contato.delete('/contacts/1140')
  end
end