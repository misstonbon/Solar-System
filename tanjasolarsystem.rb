class Planet
  attr_accessor :name, :moons, :orbit, :distance_from_sun
  # initializes attributes of each instance of a planet
def initialize(planet_hash)
    @name = planet_hash[:name]
    @moons = planet_hash[:moons]
    @orbit = planet_hash[:orbit]
    @distance_from_sun = planet_hash[:distance_from_sun]
  end

  # prints information about a specific planet
def print_info
  puts "Here are some basic facts about #{@name}: It has #{@moons} moon(s),\norbits around the sun in #{@orbit} Earth days, and is #{@distance_from_sun}\n million miles away from the Sun."
end

end #ends Planet

planet_info = [
  mercury = Planet.new(
  { name: "Mercury",
    moons: 0,
    orbit: 88,
    distance_from_sun: 58
  }),
  venus = Planet.new(
  {
    name: "Venus",
    moons: 0,
    orbit: 225,
    distance_from_sun: 108
  }),
  earth = Planet.new(
  {
    name: "Earth",
    moons: 1,
    orbit: 365,
    distance_from_sun: 150
  }),
  mars = Planet.new(
  {
    name: "Mars",
    moons: 2,
    orbit: 689,
    distance_from_sun: 230
  }),
  jupiter = Planet.new({
    name: "Jupiter",
    moons: 63,
    orbit: 4333,
    distance_from_sun: 778
  }),
  saturn = Planet.new({
    name: "Saturn",
    moons: 62,
    orbit: 10759,
    distance_from_sun: 1400
  }),
uranus = Planet.new({
    name: "Uranus",
    moons: 27,
    orbit: 30689,
    distance_from_sun:3000
  }),
  neptune = Planet.new({
    name: "Neptune",
    moons: 14,
    orbit: 60182,
    distance_from_sun: 4500
  }),
  pluto = Planet.new({
    name: "Pluto, you'll always be a planet to me.",
    moons: 5,
    orbit: 248,
    distance_from_sun: 3600
  })
]


class Solar_System
  attr_reader :name
  attr_accessor :planets #making planets accessible to Solar_System

  def initialize(name)
    @name = name
    @planets = []
  end

  def add_planets(planet)

    planet.each do |planet|
      @planets << planet
    end #ends do loop
  end #ends add planets
end #ends Solar_System


# testing to see if it prints
puts "Planets:"
planet_info.length.times { |n| puts "#{n + 1}. " + planet_info[n].name }

while true
  puts "Select the number of the planet you would like to know about: "
  selection = gets.chomp.to_i
  # creates an instance of a planet
  planet = (planet_info[selection - 1])
  # prints information about a selected planet to get the index right
  planet.print_info
  puts "\nWould you like to learn more? (y/n)\n"
  answer = gets.chomp
  puts "\n\Thanks for playing, you learn something old every day! " if answer != "y"
  break
end

#would like to know how to access things in Class
#how to use the print_info
