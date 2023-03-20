module Bright
  module Models
    class Organizer
      include JSON::Serializable

      @[JSON::Field(key: "id")]
      property id : String?

      @[JSON::Field(key: "name")]
      property name : String?

      @[JSON::Field(key: "emailAddress")]
      property email_address : String?

      @[JSON::Field(key: "oldId")]
      property old_id : Int32?
    end
  end
end
