namespace 'users'

record :user_event do
  required :id, :long
  required :user_id, :string
  required :event_type, :string
  required :value, :user
end
