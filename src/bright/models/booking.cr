module Bright
  module Models
    class Booking
      include JSON::Serializable

      @[JSON::Field(key: "composedId")]
      property composed_id : String?

      @[JSON::Field(key: "masterId")]
      property master_id : String?

      @[JSON::Field(key: "teamBookingId")]
      property team_booking_id : String?

      @[JSON::Field(key: "bookingType")]
      property booking_type : Int32

      @[JSON::Field(key: "intentionType")]
      property intention_type : Int32?

      @[JSON::Field(key: "licensePlate")]
      property license_plate : String?

      @[JSON::Field(key: "start")]
      property start_date : String

      @[JSON::Field(key: "startIanaTimeZone")]
      property start_iana_time_zone : String

      @[JSON::Field(key: "end")]
      property end_date : String

      @[JSON::Field(key: "endIanaTimeZone")]
      property end_iana_time_zone : String

      @[JSON::Field(key: "periodStart")]
      property period_start : String?

      @[JSON::Field(key: "periodStartIanaTimeZone")]
      property period_start_iana_time_zone : String

      @[JSON::Field(key: "periodEnd")]
      property period_end : String?

      @[JSON::Field(key: "periodEndIanaTimeZone")]
      property period_end_iana_time_zone : String

      @[JSON::Field(key: "exceptions")]
      property exceptions : Array(Exception)?

      @[JSON::Field(key: "recurrenceType")]
      property recurrence_type : Int32 = 0

      @[JSON::Field(key: "recurrenceRule")]
      property recurrence_rule : String?

      @[JSON::Field(key: "recurrenceRuleEnd")]
      property recurrence_rule_end : String?

      @[JSON::Field(key: "recurrenceModificationMode")]
      property recurrence_modification_mode : Int32 = 0

      @[JSON::Field(key: "subject")]
      property subject : String

      @[JSON::Field(key: "body")]
      property body : String?

      @[JSON::Field(key: "sensitivity")]
      property sensitivity : Int32 = 0

      @[JSON::Field(key: "organizer")]
      property organizer : Organizer?

      @[JSON::Field(key: "attendees")]
      property attendees : Array(Attendee) = [] of Attendee

      @[JSON::Field(key: "attendeeAmount")]
      property attendee_amount : Int32?

      @[JSON::Field(key: "spaceIds")]
      property space_ids : Array(String)

      @[JSON::Field(key: "bookedByNearbyViaEndUserApplication")]
      property booked_by_nearby_via_end_user_application : Bool?

      @[JSON::Field(key: "excludedBookingComposedIds")]
      property excluded_booking_composed_ids : Array(String)?
    end
  end
end
