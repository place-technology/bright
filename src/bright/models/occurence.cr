module Bright
  module Models
    class Occurrence
      include JSON::Serializable

      @[JSON::Field(key: "id")]
      property id : String?

      @[JSON::Field(key: "composedId")]
      property composed_id : String?

      @[JSON::Field(key: "bookingType")]
      property booking_type : Int32?

      @[JSON::Field(key: "intentionType")]
      property intention_type : Int32?

      @[JSON::Field(key: "recurrenceType")]
      property recurrence_type : Int32?

      @[JSON::Field(key: "approvalState")]
      property approval_state : Int32?

      @[JSON::Field(key: "isAnonymouslyBooked")]
      property is_anonymously_booked : Bool?

      @[JSON::Field(key: "licensePlate")]
      property license_plate : String?

      @[JSON::Field(key: "start")]
      property start_date : String?

      @[JSON::Field(key: "end")]
      property end_date : String?

      @[JSON::Field(key: "subject")]
      property subject : String?

      @[JSON::Field(key: "organizer")]
      property organizer : Organizer?

      @[JSON::Field(key: "spaces")]
      property spaces : Array(Space) = [] of Space

      @[JSON::Field(key: "attendees")]
      property attendees : Array(Attendee) = [] of Attendee

      @[JSON::Field(key: "attendeeAmount")]
      property attendee_amount : Int32?

      @[JSON::Field(key: "confirmationActive")]
      property confirmation_active : Bool?

      @[JSON::Field(key: "confirmationWindowStart")]
      property confirmation_window_start : String?

      @[JSON::Field(key: "confirmationWindowEnd")]
      property confirmation_window_end : String?
    end
  end
end
