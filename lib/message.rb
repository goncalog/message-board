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

  def self.create(name, message, date)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'message_board_test')
    else
      connection = PG.connect(dbname: 'message_board')
    end

    connection.exec("INSERT INTO messages (name, message, date) VALUES('#{name}', '#{message}', '#{date}');")
  end
end