module Contato
  include HTTParty
  
  #url base de contato
  base_uri CONFIG['url_padrao']
  
  #opçoes do meu service
  format :json
  headers Accept: 'application/vnd.taskmanager.v2', 
  'Content-Type': 'application/json'
end

#Toda vez que este módulo for chamado, sua url padrão será: 'http://api-de-tarefas.herokuapp.com/'
#O Método terá o header com as seguintes opções configuradas: Formato json, Accept e Content-Type.