class UserCreatedConsumer < Racecar::Consumer
  subscribes_to "user_created"

  def process(message)
    Rails.logger.info "Topic: #-#{message.topic} Received message: #{message.value}"
  end
end
