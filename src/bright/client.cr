module Bright
  class Client
    Log = ::Log.for(self)

    getter bookings : API::Bookings
    getter locations : API::Locations
    getter occupancy : API::Occupancy
    getter spaces : API::Spaces

    def initialize(base_url : String, api_key : String)
      session = Session.new(base_url, api_key)

      @bookings = API::Bookings.new(session)
      @locations = API::Locations.new(session)
      @occupancy = API::Occupancy.new(session)
      @spaces = API::Spaces.new(session)
    end
  end
end
