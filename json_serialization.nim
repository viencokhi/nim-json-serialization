import
  serialization, json_serialization/[reader, writer]
import strenc

export
  serialization, reader, writer

serializationFormat Json,
                    Reader = JsonReader,
                    Writer = JsonWriter,
                    PreferedOutput = string,
                    mimeType = "application/json"

template supports*(_: type Json, T: type): bool =
  # The JSON format should support every type
  true

