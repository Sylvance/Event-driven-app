record :user do
  required :id, :long
  required :name, :string
  required :email, :string
  optional :deleted, :boolean
end
