require "pry"
class Mission

    attr_reader :shuttle, :astronaut, :launch_date

    @@all = []
    def initialize(shuttle, astronaut, launch_date)
        @shuttle = shuttle
        @astronaut = astronaut
        @launch_date = launch_date
        Mission.all << self
    end

    def self.all
        @@all
    end
end
