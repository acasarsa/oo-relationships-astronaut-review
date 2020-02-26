## spot a many to many 
## Shuttle#current_astronauts
returns an Array of all the astronauts on this shuttle
-- shuttle has many astronauts
tells me that it's a many to many. 


## stronaut#shuttles
returns an Array of this astronaut's shuttles
- astronaut has many shuttles 

many to many requires a join model. 

## MISSION BELONGS TO ASTUONAUT AND BELONGS TO SHUTTLE

## Shuttle#model
returns a String that is the model number of the shuttle
# a read method that returns the model number 

## Shuttle#capacity
returns a Fixnum that is the total number of astronauts that the shuttle can host
# they want to see what the capacity is, so we don't need to make a writer method (so far)

## Shuttle.all
returns an Array of all of NASA's currently running shuttles
easy.

Shuttle#add_astronaut
takes in an argument of an Astronaut instance and a launch date, and adds them to this shuttle's list of astronauts as long as it doesn't exceed the shuttle's capacity.

Shuttle.find_by_model
takes a String argument of a model number and returns a Shuttle instance that matches that argument


attr_reader - it should tell u if it wants to be changed. only do reader if 


##  Astronaut#name
returns a String that is the astronaut's name
## Astronaut#age
returns a Fixnum that is the age of the astronaut
 ## Astronaut#specialty
returns a String that is the astronaut's focus of study on Mars
    - these are all attributes and answered in the attr_


    MISSION == is the joiner 
    so you can't make it without the shuttle and astronaut who will be joined there. 

    whenever you want to do something that connects those two u go to Mission.all

## Astronaut#shuttles
returns an Array of this astronaut's shuttles

- returns an array so it's either .map or .select

- find the missions that my astronaut owns.
    - 
- find all the shuttles that are associated with those missions

def missions
    Mission.all.select do |mission|
    mission.astronaut == self
end

def shuttles
    self.missions.map do |mission|
    mission.shuttle
    end.uniq
end

Shuttle.find_by_model
takes a String argument of a model number and returns a Shuttle instance that matches that argument
.each returns original array 
.find because u only want to find one. 
it wasn't .find  becasue it's not an array. 
.find allows a condition and returns first thing that returns true. 


## Astronaut#join_shuttle
- takes in an argument of a Shuttle instance 
- a launch date, and adds this astronaut to the shuttle's list of astronauts 
- if it doesn't exceed that shuttle's capacity. If the shuttle is already full, print the following message: This shuttle is at capacity!.

## join shuttle creates new mission instance 
- has an astro and has a shuttle 

user friend user 

user creates an instance of friend when they "friend" someone. where userA and B are friends.

chair sit person

favorite_chair = chair person sat in the most. 

def add_astronaut(astronaut, launch_date)
    if self.current_astronauts.length < self.capacity
    Mission.new(self, astronaut, launch_date)
end

