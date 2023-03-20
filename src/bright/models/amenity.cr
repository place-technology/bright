module Bright
  module Models
    class Amenity
      include JSON::Serializable

      @[JSON::Field(key: "id")]
      property id : String?

      @[JSON::Field(key: "description")]
      property description : String?

      @[JSON::Field(key: "icon")]
      property icon : String?

      @[JSON::Field(key: "order")]
      property order : Int32?

      @[JSON::Field(key: "availableForRoom")]
      property available_for_room : Bool?

      @[JSON::Field(key: "availableForDesk")]
      property available_for_desk : Bool?

      @[JSON::Field(key: "availableForParking")]
      property available_for_parking : Bool?
    end
  end
end
