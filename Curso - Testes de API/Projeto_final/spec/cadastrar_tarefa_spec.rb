describe 'Cadastrar' do 
    def login(field_email, field_password)
      @body = {
        session: {
          email: field_email,
          password: field_password
        }
      }.to_json
      @login = Login.post('/sessions', body:@body)
      puts @login.body
    end
  context 'Tarefas' do
  before { login('brunobatista66@gmail.com', '123456') }

    it 'Com sucesso' do 
      @header = {
        'Content-Type': 'application/json',
        Accept: 'application/vnd.tasksmanager.v2',
        Authorization: @login.parsed_response['data']['attributes']['auth-token']
      }

      @body = {
        task: {
          title: 'Criei Tarefa 125',
          description: 'Descrição da tarefa 125', 
          deadline: '2019-09-11 12:00:00', 
          done: true
        }
      }.to_json

      @tarefas = Cadastrar.post('/tasks', body: @body, headers: @header)
      puts @tarefas
      expect(@tarefas.parsed_response['data']['attributes']['title']).to eq 'Criei Tarefa 125'
    end
  end
end