require 'mongo'
class Dao
    
    attr_accessor :client

    Mongo::Logger.logger = Logger.new('log/mongo.log')

    def initialize
        str_con = 'mongodb://aluno:qaninja@ds225078.mlab.com:25078/heroku_4m3km28x'
        @client = Mongo::Client.new(str_con)
    end

    def buscar_usuario email
        user = @client[:users]
        user.find('profile.email' => email).first
    end

    def remover_tarefas nome_tarefa, usuario
        user = buscar_usuario(usuario)
        tasks = @client[:tasks]
        tasks.delete_many(:title => nome_tarefa, :createdBy => user[:_id])
    end
    
end