class ApplicationController < ActionController::Base
  def show
    @comment = Comment.find(params[:id])

    event = {
      name: "comment_viewed",
      data: {
        comment_id: @comment.id,
        user_id: current_user.id
      }
    }

    # By delivering messages asynchronously you free up your server processes faster.
    DeliveryBoy.deliver_async(event.to_json, topic: "activity")
  end

  def create
     @comment = Comment.create!(params)

     event = {
       name: "comment_created",
       data: {
         comment_id: @comment.id
         user_id: current_user.id
       }
     }

     # This will queue the two messages in the internal buffer.
     DeliveryBoy.produce(comment.to_json, topic: "comments")
     DeliveryBoy.produce(event.to_json, topic: "activity")

     # This will deliver all messages in the buffer to Kafka.
     # This call is blocking.
     DeliveryBoy.deliver_messages
   end
end
