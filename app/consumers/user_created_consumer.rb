class UserCreatedConsumer < Racecar::Consumer
  subscribes_to "user_created"

  def process(message)
    data = JSON.parse(message.value)
    puts data["user_id"]
  end
end
