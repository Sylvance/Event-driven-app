class UserUpdatedConsumer < Racecar::Consumer
  subscribes_to "user_updated"

  def process(message)
    data = JSON.parse(message.value)
    puts data.fetch("user_id")
  end
end
