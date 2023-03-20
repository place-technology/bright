module Bright
  module Models
    module Responses
      class BookingsResponse
        include JSON::Serializable

        @[JSON::Field(key: "meta")]
        property metadata : Metadata

        @[JSON::Field(key: "data")]
        property data : Array(Booking)

        @[JSON::Field(key: "paging")]
        property paging : Paging
      end
    end
  end
end
