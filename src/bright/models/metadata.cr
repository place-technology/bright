module Bright
  module Models
    class Metadata
      include JSON::Serializable

      @[JSON::Field(key: "statusCode")]
      property status_code : Int32?

      @[JSON::Field(key: "message")]
      property message : String?

      @[JSON::Field(key: "validationErrors")]
      property validation_errors : Array(Hash(String, String))?
    end
  end
end
