describe 'Fazer uma requisição' do
  context 'Alterar dados com' do
    it 'Put' do
      @body_put = {
        "id": 1149,
        "name": "Luan Miguel Carvalho",
        "last_name": "Linhares",
        "email": "luancarvalho@gmail.com",
        "age": 32,
        "phone": "11989019464",
        "address": "Avenida Angélica",
        "state": "São Paulo",
        "city": "São Paulo"
      }.to_json
      @request_put = Contato.put('/contacts/1149', body: @body_put)
      puts @request_put

    end

    it 'Patch' do
      @body_patch = {
        "id": 1140,
        "name": "Linares",
        "last_name": "luan",
        "email": "lulinares_7@gmail.com",
      }.to_json
      @request_patch = Contato.patch('/contacts/1140', body: @body_patch)
      puts @request_patch
    end

  end


end