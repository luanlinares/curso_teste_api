describe 'trabalhando', teste_tag:  true do 
  it 'com tag' do
    puts 'usei a tag com o nome teste_tag'
  end
end

describe 'andando', :teste_simbolo do 
  it 'com tag 1' do
    puts 'usei a tag com o nome teste_simbolo'
  end
end

#Eu não quero rodar essa
describe 'correndo', :nao_teste_tag do 
  it 'com tag 3 ' do
    puts 'usei a tag com o nome nao_teste_tag' 
  end
end