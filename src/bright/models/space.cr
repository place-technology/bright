module Bright
  module Models
    class Space
      include JSON::Serializable

      @[JSON::Field(key: "id")]
      property id : String?

      @[JSON::Field(key: "name")]
      property name : String?

      @[JSON::Field(key: "amenities")]
      property amenities : Array(Amenity) = [] of Amenity

      @[JSON::Field(key: "type")]
      property type : Int64?

      @[JSON::Field(key: "locationId")]
      property location_id : String?

      @[JSON::Field(key: "ianaTimeZone")]
      property iana_time_zone : String?

      @[JSON::Field(key: "capacity")]
      property capacity : Int64?

      @[JSON::Field(key: "integrationExternalId")]
      property integration_external_id : String?

      @[JSON::Field(key: "isBookable")]
      property is_bookable : Bool?
    end
  end
end
