require "pry"
class Astronaut
    attr_reader :name, :age, :specialty
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
        end.uniq
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
        self.all.max_by {|astronaut| astronaut.mission_count}
    end

    def self.top_three

        self.all.max_by(3) {|astronaut| astronaut.mission_count}
        
    end

    def self.all
        @@all
    end

end
