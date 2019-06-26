# your code goes here
require "pry"

class Person
    attr_accessor :bank_account
    attr_reader :name, :hygiene , :happiness

    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8   
    end
    def happiness= num
        if num < 0 
            @happiness = 0 
        elsif num > 10 
            @happiness = 10
        else 
            @happiness = num
        end    
    end
    def hygiene= num
        if num < 0 
            @hygiene = 0 
        elsif num > 10 
            @hygiene = 10
        else 
            @hygiene = num
        end    
    end
    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid salary
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene += 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene=(@hygiene -= 3)
        self.happiness=(@happiness += 2)
        "♪ another one bites the dust ♫"
    end
    def call_friend(name)
        name.happiness += 3
        self.happiness += 3
        "Hi #{name.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person,topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end 