class Shuttle
    attr_reader :model, :capacity
    
    @@all = []
    def initialize(model,capacity)
        @model = model
        @capacity = capacity
        Shuttle.all << self
    end

    def missions
        Mission.all.select {|mission| mission.shuttle == self}
    end

    def full?(launch_date)
        # binding.pry
        missions.select {|mission| mission.launch_date == launch_date}.count >= capacity
    end

    def add_astronaut(astronaut, launch_date)
        if !full?(launch_date)
            Mission.new(self, astronaut, launch_date)
        end
    end

    def current_astronauts
        missions.map {|mission| mission.astronaut}.uniq
        
    end

    def self.find_by_model(model)
        self.all.select {|shuttle| shuttle.model == model}
    end

    def self.all
        @@all
    end

    
end
