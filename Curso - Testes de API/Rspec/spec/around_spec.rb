describe 'Usando Around' do 
  around(:each) do |testes|
    puts 'Executando comandos antes dos testes =)'
    testes.run
    puts 'Executando comandos depois dos testes =)'
  end

  it 'soma de dois numeros' do 
    total = 2+2
    expect(total).to eq 4
    puts "O valor final é: #{total}"
  end
end