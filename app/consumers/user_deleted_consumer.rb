class UserDeletedConsumer < Racecar::Consumer
  subscribes_to "user_deleted"

  def process(message)
    data = JSON.parse(message.value)
    puts data["user_id"]
  end
end
