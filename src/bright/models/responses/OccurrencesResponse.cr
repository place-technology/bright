module Bright
  module Models
    module Responses
      class OccurrencesResponse
        include JSON::Serializable

        @[JSON::Field(key: "meta")]
        property metadata : Metadata

        @[JSON::Field(key: "items")]
        property items : Array(Occurrence)

        @[JSON::Field(key: "paging")]
        property paging : Paging
      end
    end
  end
end
