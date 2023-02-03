module Bright
  module Models
    class Attendee
      include JSON::Serializable

      @[JSON::Field(key: "name")]
      property name : String

      @[JSON::Field(key: "emailAddress")]
      property email_address : String
    end
  end
end
