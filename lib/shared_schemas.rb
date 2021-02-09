module SharedSchemas
  ROOT = File.expand_path(File.dirname(__FILE__))
  DSL_ROOT = File.realpath(File.join(ROOT, '..', 'avro', 'dsl'))
end
