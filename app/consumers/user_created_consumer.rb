class UserCreatedConsumer < Racecar::Consumer
  subscribes_to "user_created"

  def process(message)
    data = JSON.parse(message.value)
    Rails.logger.info data["user_id"]
  end
end
