namespace 'com.user.records'

record :user_record do
  required :id, :long
  required :name, :string
  required :email, :string
  optional :deleted, :boolean
end
