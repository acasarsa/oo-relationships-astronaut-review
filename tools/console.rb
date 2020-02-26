require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#write your test code in here

astronaut1 = Astronaut.new("bob", "45", "spec1")
astronaut2 = Astronaut.new("andrew", "33", "sep3")
astronaut3 = Astronaut.new("rob", "38", "spec4")


shuttle1 = Shuttle.new("mod1", 2)
shuttle2 = Shuttle.new("mod2", 2)
shuttle3 = Shuttle.new("mod3", 2)
shuttle4 = Shuttle.new("mod3", 2)

date1 = 1990
date2 = 1994
date3 = 1997
date4 = 2017

shuttle1.add_astronaut(astronaut1, date1)
shuttle1.add_astronaut(astronaut2, date1)
shuttle2.add_astronaut(astronaut3, date1)
shuttle2.add_astronaut(astronaut1, date4)
# mission1 = Mission.new(shuttle1, "", date1)
# mission2 = Mission.new(shuttle1, "", date1)
# mission3 = Mission.new(shuttle1, "", date1)
# mission4 = Mission.new(shuttle3, "", date2)
# mission5 = Mission.new(shuttle1, "", date2)
# mission6 = Mission.new(shuttle2, "", date2)
# mission7 = Mission.new(shuttle2, "", date4)
# mission8 = Mission.new(shuttle1, "", date4)
# mission9 = Mission.new(shuttle3, "", date4)
# mission10 = Mission.new(shuttle3, "", date4)



binding.pry

puts "Let's go to space!" # just in case pry is buggy and exits
