class GeoCodingConsumer < Racecar::Consumer
  subscribes_to "pageviews"

  def process(message)
    pageview = JSON.parse(message.value)
    ip_address = pageview.fetch("ip_address")

    country = GeoCode.country(ip_address)

    # Enrich the original message:
    pageview["country"] = country

    # The `produce` method enqueues a message to be delivered after #process
    # returns. It won't actually deliver the message.
    produce(JSON.dump(pageview), topic: "pageviews-with-country", key: pageview["id"])
  end
end
