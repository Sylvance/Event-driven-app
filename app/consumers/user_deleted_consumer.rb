class UserDeletedConsumer < Racecar::Consumer
  subscribes_to "user_deleted"

  def process(message)
    Rails.logger.info "Topic: #-#{message.topic} Received message: #{message.value}"
  end
end
