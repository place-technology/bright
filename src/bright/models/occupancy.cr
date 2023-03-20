module Bright
  module Models
    class Occupancy
      include JSON::Serializable

      @[JSON::Field(key: "id")]
      property id : String?

      @[JSON::Field(key: "occupationDetected")]
      property occupation_detected : Bool?
    end
  end
end
