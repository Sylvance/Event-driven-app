json.extract! user_event_datum, :id, :user_id, :type, :value, :created_at, :updated_at
json.url user_event_datum_url(user_event_datum, format: :json)
