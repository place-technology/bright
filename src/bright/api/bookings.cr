module Bright
  module API
    class Bookings
      def initialize(@session : Session)
      end

      def get(start_date : String, end_date : String, location_ids : Array(String) = [] of String, space_ids : Array(String) = [] of String, included_submodels : String? = nil, paging_skip : Int32 = 10, paging_take : Int32 = 10) : Array(Models::Booking)
        io = IO::Memory.new
        builder = ParameterBuilder.new(io)

        {% for x in %w(location_ids space_ids paging_skip paging_take) %}
          builder.add({{x}}, {{x.id}}) unless {{x.id}}.nil?
        {% end %}

        builder.add("start", start_date)
        builder.add("end", end_date)
        builder.add("include", included_submodels)

        response = Models::Responses::BookingsResponse.from_json \
          @session.get("/api/v2.0/bookings?#{io.rewind}").body

        response.data
      end

      def get_occurrences(start_date : String, end_date : String, location_ids : Array(String) = [] of String, space_ids : Array(String) = [] of String, included_submodels : String? = nil, paging_skip : Int32 = 10, paging_take : Int32 = 10, continuation_token : String? = nil) : Array(Models::Occurrence)
        io = IO::Memory.new
        builder = ParameterBuilder.new(io)

        {% for x in %w(location_ids space_ids paging_skip paging_take continuation_token) %}
          builder.add({{x}}, {{x.id}}) unless {{x.id}}.nil?
        {% end %}

        builder.add("start", start_date)
        builder.add("end", end_date)
        builder.add("include", included_submodels)

        response = Models::Responses::OccurrencesResponse.from_json \
          @session.get("/api/v2.0/bookings/occurrences?#{io.rewind}").body

        response.items
      end

      def create(booking : Models::Booking, included_submodels : String? = nil) : Models::Booking
        io = IO::Memory.new
        builder = ParameterBuilder.new(io)

        builder.add("include", included_submodels)

        Models::Booking.from_json \
          @session.post("/api/v2.0/bookings?#{io.rewind}", raw: booking.to_json).body
      end

      def update(booking : Models::Booking, included_submodels : String? = nil) : Models::Booking
        io = IO::Memory.new
        builder = ParameterBuilder.new(io)

        builder.add("include", included_submodels)

        Models::Booking.from_json \
          @session.put("/api/v2.0/bookings?#{io.rewind}", raw: booking.to_json).body
      end

      def delete(booking_id : String) : Nil
        @session.delete("/api/v2.0/bookings?bookingId=#{booking_id}")

        nil
      end
    end
  end
end
