require "pry"

class Customer
  
    attr_reader :name
    attr_writer :age 

    @@all = []

    def initialize(name, age)

        @name = name
        @age = age
        @@all << self 
    end 

    def self.all
        
        return @@all
    end 

    def new_meal(waiter, total, tip)

        Meal.new(waiter, self, total, tip)
    end 

    def meals

        Meal.all.select {|meal|meal.customer == self }
    end 

    def waiters 

        self.meals.map {|meal|meal.waiter}
    end 
end