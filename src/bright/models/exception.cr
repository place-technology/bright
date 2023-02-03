module Bright
  module Models
    class Exception
      include JSON::Serializable

      @[JSON::Field(key: "start")]
      property start : String

      @[JSON::Field(key: "bookingExceptionType")]
      property booking_exception_type : Int32
    end
  end
end
