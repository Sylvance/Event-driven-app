class UserCreatedConsumer < Racecar::Consumer
  subscribes_to "user_created"

  def process(message)
    Rails.logger.info "Topic: #-#{message.topic}/#{message.partition} at offset #{message.offset}"
    Rails.logger.info "Received message: #{message.value}"
  end
end
