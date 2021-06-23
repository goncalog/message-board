require 'pg'

class Message
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'message_board_test')
    else
      connection = PG.connect(dbname: 'message_board')
    end

    result = connection.exec("SELECT * FROM messages;")
    result.map do |message| 
      "#{message['message']} by #{message['name']} at #{message['date']}"
    end
  end
end