class UserDeletedConsumer < Racecar::Consumer
  subscribes_to "user_deleted"

  def process(message)
    Rails.logger.info "Topic: #-#{message.topic}/#{message.partition} at offset #{message.offset}"
    Rails.logger.info "Received message: #{message.value}"
  end
end
