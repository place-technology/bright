module Bright
  module Models
    class ParkingPeriod
      include JSON::Serializable

      @[JSON::Field(key: "mode")]
      property mode : Int64?

      @[JSON::Field(key: "workingMode")]
      property working_mode : Int64?

      @[JSON::Field(key: "startOfDay")]
      property start_of_day : String?

      @[JSON::Field(key: "middleOfDay")]
      property middle_of_day : String?

      @[JSON::Field(key: "endOfDay")]
      property end_of_day : String?
    end
  end
end
