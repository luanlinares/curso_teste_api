describe 'Usando hooks' do
  before(:each) do 
    puts 'Executei antes dos testes'
  end
  
  it 'teste padrão' do
    total = 5+5
    expect(total).to eq 10
    puts 'Executando o teste'
  end

  after(:each) do 
    puts 'Executei depois dos testes'
  end
  

end