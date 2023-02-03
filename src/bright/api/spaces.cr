module Bright
  module API
    class Spaces
      def initialize(@session : Session)
      end

      def get(space_types : Int32 = 0, location_id : String? = nil, included_submodels : String? = nil, paging_skip : Int32 = 10, paging_take : Int32 = 10)
        io = IO::Memory.new
        builder = ParameterBuilder.new(io)

        {% for x in %w(space_types location_id paging_skip paging_take) %}
          builder.add({{x}}, {{x.id}}) unless {{x.id}}.nil?
        {% end %}

        builder.add("include", included_submodels)

        JSON.parse(@session.get("/api/v2.0/spaces?#{io.rewind}").body)
      end
    end
  end
end
