module Bright
  module API
    class Locations
      def initialize(@session : Session)
      end

      def get(paging_skip : Int32 = 10, paging_take : Int32 = 10)
        io = IO::Memory.new
        builder = ParameterBuilder.new(io)

        {% for x in %w(paging_skip paging_take) %}
          builder.add({{x}}, {{x.id}}) unless {{x.id}}.nil?
        {% end %}

        JSON.parse(@session.get("/api/v2.0/locations?#{io.rewind}").body)
      end
    end
  end
end
