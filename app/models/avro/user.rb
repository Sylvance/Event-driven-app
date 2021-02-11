module Avro
  class User
    include Avromatic::Model.build(schema_name: 'user', namespace: 'users')
    AvroSchemaRegistry::Client.new()
  end
end
