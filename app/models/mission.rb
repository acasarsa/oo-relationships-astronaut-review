require "pry"
class Mission

    attr_reader :shuttle, :astronaut, :launch_date

    @@all = []
    def initialize(shuttle, astronaut, launch_date) # shows that it belongs to shuttle and astronaut
        @shuttle = shuttle
        @astronaut = astronaut
        @launch_date = launch_date
        Mission.all << self
    end

    def self.astronauts
        self.all.map {|mission| mission.astronaut}
    end

    
    def self.first_launch
        self.all.min_by(2) {|mission| mission.launch_date}.map {|mission| mission.astronaut}
    end

    def self.all
        @@all
    end
end
