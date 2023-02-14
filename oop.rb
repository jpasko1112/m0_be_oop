# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string


class Unicorn
    def initialize(name)
        @color = "silver"
        @name = name
        @say = "hi"
    end

    def say(new_say)
        "*~*{new_say}*~*"
    end
end

Uni = Unicorn.new("Alfred")
p Uni
p Uni.say("hi")


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
    end

    def drink
        @thirsty = false
    end
end

Vampire1 = Vampire.new("Simon", "hamster")
p Vampire1

Vampire1.drink
p Vampire1



#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :name, :rider, :color, :is_hungry, :counter
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @counter = 0
    end

    def eat
        @counter += 1
        @is_hungry = false if @counter >= 4
    end
end

drag1 = Dragon.new("Wigginisworth", "Cedric", "Yellow")
4.times {drag1.eat}
p drag1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :name, :disposition, :age, :is_adult, :is_old
    def initialize(name, disposition)
        @name = name
        @disposition = disposition
        @age = 0
        @is_adult = false
        @is_old = false
        @has_ring = false
    end

    def celebrate_birthday
        @age += 1
    end

    def age
        if @age >= 101
            @is_old = true && @is_adult = true
        else @age >=33
            @is_adult = true
        end
    end

    def name
        if @name == "Frodo"
            @has_ring = true
        end
    end
end

hobbit1 = Hobbit.new("Frodo", "Hungry")

105.times{hobbit1.celebrate_birthday}
hobbit1.name
hobbit1.age
p hobbit1

