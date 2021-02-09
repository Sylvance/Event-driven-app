record :user_event_datum_record do
  required :id, :long
  required :user_id, :string
  required :event_type, :string
  required :value, :user_record
end
