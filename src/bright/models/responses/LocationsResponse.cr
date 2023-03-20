module Bright
  module Models
    module Responses
      class LocationsResponse
        include JSON::Serializable

        @[JSON::Field(key: "meta")]
        property metadata : Metadata

        @[JSON::Field(key: "data")]
        property data : Array(Location)

        @[JSON::Field(key: "paging")]
        property paging : Paging
      end
    end
  end
end
