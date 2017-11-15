class Locations

  def initialize(name)
    @name = name
  end
end

class Trip
@@stops = []

  def new_stop
    stop_name = Locations.new(name)
    @@stops << stop_name
    stop_name
  end

  def all_stops
    @@stops
  end
end

#Create a Location class with a name.

#Create a Trip class with an array of Location instances (called stops or destinations
#or something similar). Define a method that lets you add locations to the trip's list of destinations.

#make several instances of Locations and add them to an instance of Trip.
my_trip = Trip.new

my_trip.new_stop("Toronto")
my_trip.new_stop("Hamilton")
p my_trip.all_stops
