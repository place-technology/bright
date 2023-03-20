module Bright
  module API
    class Locations
      def initialize(@session : Session)
      end

      def get(paging_skip : Int32 = 10, paging_take : Int32 = 10) : Array(Models::Location)
        io = IO::Memory.new
        builder = ParameterBuilder.new(io)

        {% for x in %w(paging_skip paging_take) %}
          builder.add({{x}}, {{x.id}}) unless {{x.id}}.nil?
        {% end %}

        response = Models::Responses::LocationsResponse.from_json \
          @session.get("/api/v2.0/locations?#{io.rewind}").body

        response.data
      end
    end
  end
end
