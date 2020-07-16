class Shelter
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        Shelter.all << self
    end

    def self.all
        @@all
    end

    def self.find_by_shelter(shelter)
        Animal.all.select do |animal|
            animal.shelter == shelter
        end
        #made this a class method because I think it makes more sense to operate this method from the class level instead of the instance level which already has find_all_in_shelter
    end

    def find_all_in_shelter
        Animal.all.select do |animal|
            animal.shelter == self
        end
    end

    def find_all_adopted
        Animal.all.select do |animal|
            animal.owner != nil
        end
    end

    def rescue_animal(animal)
        animal.owner = nil
        animal.shelter = self
    end

end