describe Message do
  describe '#all' do
    it 'returns all messages from db' do
      messages = [
        'A message by Aurelius at 2021-06-23',
        'A poem by Arthur at 2021-06-22',
        'A song by Sinatra at 2021-06-21',
      ]
      expect(Message.all).to eq messages
    end
  end
end