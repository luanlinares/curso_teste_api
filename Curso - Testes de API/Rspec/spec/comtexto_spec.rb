describe 'Soma' do 
  context 'Somar dois números' do
    it 'Testar a soma de dois números positivos' do 
    total = 2 + 5
    expect(total). to eql 7
    end

    it 'Testar a soma de dois números negativos' do 
    total = -2 +(-5)
    expect(total). to eql -7
    end
  end
end