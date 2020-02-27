describe 'Soma' do 

  it 'Testar a soma de dois números' do 
    total = 2 + 5

  puts total
  expect(total). to eql 7
  end

  it 'Testar a soma de dois números negativos' do 
    total = -2 +(-5)

  puts total
  expect(total). to eql -7
  end

end