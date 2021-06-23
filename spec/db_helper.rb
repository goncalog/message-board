def empty_and_populate_db
  connection = PG.connect(dbname: 'message_board_test')
  connection.exec("TRUNCATE TABLE messages;")
  connection.exec("INSERT INTO messages (name, message, date) VALUES('Aurelius', 'A message', '20210623');")
  connection.exec("INSERT INTO messages (name, message, date) VALUES('Arthur', 'A poem', '20210622');")
  connection.exec("INSERT INTO messages (name, message, date) VALUES('Sinatra', 'A song', '20210621');")
end