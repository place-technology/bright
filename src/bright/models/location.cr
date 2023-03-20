module Bright
  module Models
    class Location
      @[JSON::Field(key: "id")]
      property id : String?

      @[JSON::Field(key: "oldId")]
      property old_id : Int64?

      @[JSON::Field(key: "parentId")]
      property parent_id : String?

      @[JSON::Field(key: "name")]
      property name : String?

      @[JSON::Field(key: "nameIndented")]
      property name_indented : String?

      @[JSON::Field(key: "order")]
      property order : Int64?

      @[JSON::Field(key: "level")]
      property level : Int64?

      @[JSON::Field(key: "fullPath")]
      property full_path : String?

      @[JSON::Field(key: "ianaTimeZone")]
      property iana_time_zone : String?

      @[JSON::Field(key: "visitorKioskEnabled")]
      property visitor_kiosk_enabled : Bool?

      @[JSON::Field(key: "imageId")]
      property image_id : String?

      @[JSON::Field(key: "bookingDeskPeriods")]
      property booking_desk_periods : DeskPeriod?

      @[JSON::Field(key: "bookingParkingPeriods")]
      property booking_parking_periods : ParkingPeriod?
    end
  end
end
