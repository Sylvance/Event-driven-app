Avromatic.configure do |config|
  config.schema_store = AvroTurf::SchemaStore.new(path: "#{Rails.root}/avro/dsl")
  config.registry_url = Rails.configuration.x.avro_schema_registry_url
  config.build_messaging!
end
