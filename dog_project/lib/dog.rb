class Dog

    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    #Getter Method
    def name
        @name
    end

    def breed
        @breed
    end
    
    def age
        @age
    end

    def favorite_foods
        @favorite_foods
    end 
    
    def bark
        if @age > 3
        @bark.upcase
        else 
        @bark.downcase
        end
    end


    #setting method
    def age=(number)
        @age = number
    end 

    def favorite_food?(str)
        @favorite_foods.map(&:capitalize).include?(str.capitalize)
    end

end
