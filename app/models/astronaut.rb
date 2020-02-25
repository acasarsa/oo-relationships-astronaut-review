require "pry"
class Astronaut
    attr_accessor :name, :age, :specialty
    @@all = []
    def initialize(name,age,specialty)
        @name = name
        @age = age
        @specialty = specialty
        Astronaut.all << self
    end

    def missions
        Mission.all.select do |mission| 
            mission.astronaut == self 
        end
    end

    def shuttles
        missions.map do |mission| 
            mission.shuttle
        end.uniq
    end

    def join_shuttle(shuttle, launch_date)
        if !shuttle.full?(launch_date)
            Mission.new(shuttle, self, launch_date)
        end
    end

    def mission_count
        missions.count
    end

    def self.most_missions
        
        bob = self.all.max_by {|astronaut| astronaut.mission_count}
        puts "#{bob.name} has the most missions with #{bob.mission_count}"
        bob
    end

    def self.all
        @@all
    end

end
