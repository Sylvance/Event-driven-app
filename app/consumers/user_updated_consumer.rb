class UserUpdatedConsumer < Racecar::Consumer
  subscribes_to "user_updated"

  def process(message)
    Rails.logger.info "Topic: #-#{message.topic}/#{message.partition} at offset #{message.offset}"
    Rails.logger.info "Received message: #{message.value}"
  end
end
