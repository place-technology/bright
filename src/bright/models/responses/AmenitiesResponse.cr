module Bright
  module Models
    module Responses
      class AmenitiesResponse
        include JSON::Serializable

        @[JSON::Field(key: "meta")]
        property metadata : Metadata

        @[JSON::Field(key: "data")]
        property data : Array(Amenity)

        @[JSON::Field(key: "paging")]
        property paging : Paging
      end
    end
  end
end
