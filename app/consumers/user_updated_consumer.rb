class UserUpdatedConsumer < Racecar::Consumer
  subscribes_to "user_updated"

  def process(message)
    Rails.logger.info "Topic: #-#{message.topic} Received message: #{message.value}"
  end
end
