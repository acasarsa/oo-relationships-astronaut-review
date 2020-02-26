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

    # def full?(launch_date)
    #     # binding.pry
    #     missions.select {|mission| mission.launch_date == launch_date}.count >= capacity
    # end

    def full?
        self.current_astronauts.length < self.capacity
    end

    def add_astronaut(astronaut, launch_date)
        if full?
        Mission.new(self, astronaut, launch_date)
        else
            puts "this shuttle is full"
        end
    end

    # def add_astronaut(astronaut, launch_date)
    #     if !full?(launch_date)
    #         Mission.new(self, astronaut, launch_date)
    #     end
    # end

    def current_astronauts
        missions.map {|mission| mission.astronaut}.uniq
        
    end

    def self.find_by_model(model)
        self.all.find {|shuttle| shuttle.model == model}
    end

    def average_age
        current_astronauts.map do |astronaut|
            astronaut.age.to_f
            # binding.pry
        end.inject(0.0) { |sum, el| sum + el } / current_astronauts.size
    end

    def astronauts_specialties
        current_astronauts.map do |astro|
            astro.specialty
        end
    end

    def self.smallest_mission
        self.all.min_by do |shuttle|
            shuttle.current_astronauts.length
        end
    end

    def self.most_common_model
        self.all.max_by {|shuttle| shuttle.model}
    end

    def self.all
        @@all
    end

    
end
