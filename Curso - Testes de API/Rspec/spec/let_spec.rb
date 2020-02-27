describe 'Somar' do 
  context 'dois números' do 
    let(:resultado) {3 + 5}
    #É possível utilizar varios Lets, porém com nomes de variáveis diferentes.  
    #Também é possível chamar a variavel de um let dentro do outro 
    it 'Positivos' do
      expect(resultado). to eq 8
    end 
  end
end
