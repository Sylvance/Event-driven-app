class UserViewedConsumer < Racecar::Consumer
  subscribes_to "user_viewed"

  def process(message)
    data = JSON.parse(message.value)
    puts data["user_id"]
  end
end
