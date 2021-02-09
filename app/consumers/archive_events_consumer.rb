class ArchiveEventsConsumer < Racecar::Consumer
  subscribes_to "events"

  def process_batch(messages)
    file_name = [
      messages.first.topic, # the topic this batch of messages came from.
      messages.first.partition, # the partition this batch of messages came from.
      messages.first.offset, # offset of the first message in the batch.
      messages.last.offset, # offset of the last message in the batch.
    ].join("-")

    File.open(file_name, "w") do |file|
      # the messages in the batch.
      messages.each do |message|
        file << message.value
      end
    end
  end
end
