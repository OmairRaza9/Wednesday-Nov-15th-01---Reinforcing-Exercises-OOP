
class Location

  def initialize(name)
  @name = name
  end

  def name
    @name
  end
end

class Trip
@@locations = []

  def new_stop(name)
    new_stop = Location.new(name)
    @@locations << new_stop
  end

  def self.all_stops
    @@locations
  end
  def iterate
    puts "Start your trip"

    @@locations.each_index do |x|
      if  @@locations[x + 1] != nil

         puts "I started in #{@@locations[x].name} and then I went to #{@@locations[x+1].name}"


      end

    end
    puts "that is the end of your trip"
  end

  #Go through the Locations array and have city 1 display. then city 2 display. then move onto city2 display and city 3 display
  #until the end of the array

  #make several instances of Locations and add them to an instance of Trip.

end
my_trip = Trip.new
my_trip.new_stop("Toronto")
my_trip.new_stop("Hamilton")
my_trip.new_stop("Newyork")
my_trip.new_stop("Houston")

 # p Trip.all_stops

my_trip.iterate


# Trip.new_stop.inspect
