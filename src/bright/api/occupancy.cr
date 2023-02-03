module Bright
  module API
    class Occupancy
      def initialize(@session : Session)
      end

      def get(filter_location_id : String, filter_space_type : Int32? = nil, paging_skip : Int32 = 10, paging_take : Int32 = 10)
        io = IO::Memory.new
        builder = ParameterBuilder.new(io)

        {% for x in %w(filter_location_id filter_space_type paging_skip paging_take) %}
          builder.add({{x}}, {{x.id}}) unless {{x.id}}.nil?
        {% end %}

        JSON.parse(@session.get("/api/v2.0/occupancy/space/live?#{io.rewind}").body)
      end
    end
  end
end
