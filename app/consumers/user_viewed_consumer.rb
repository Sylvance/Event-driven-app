class UserViewedConsumer < Racecar::Consumer
  subscribes_to "user_viewed"

  def process(message)
    Rails.logger.info "Topic: #-#{message.topic} Received message: #{message.value}"
  end
end
