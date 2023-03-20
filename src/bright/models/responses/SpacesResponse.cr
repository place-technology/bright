module Bright
  module Models
    module Responses
      class SpacesResponse
        include JSON::Serializable

        @[JSON::Field(key: "meta")]
        property metadata : Metadata

        @[JSON::Field(key: "data")]
        property data : Array(Space)

        @[JSON::Field(key: "paging")]
        property paging : Paging
      end
    end
  end
end
