module Bright
  module API
    class Occupancy
      def initialize(@session : Session)
      end

      def get(filter_location_id : String, filter_space_type : Int32? = nil, paging_skip : Int32 = 10, paging_take : Int32 = 10) : Array(Models::Occupancy)
        io = IO::Memory.new
        builder = ParameterBuilder.new(io)

        {% for x in %w(filter_location_id filter_space_type paging_skip paging_take) %}
          builder.add({{x}}, {{x.id}}) unless {{x.id}}.nil?
        {% end %}

        response = Models::Responses::OccupancyResponse.from_json \
          @session.get("/api/v2.0/occupancy/space/live?#{io.rewind}").body

        response.data
      end
    end
  end
end
