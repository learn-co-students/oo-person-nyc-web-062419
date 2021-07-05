# your code goes here

class Person 
    attr_reader :name, :hygiene 
    attr_accessor :bank_account, :happiness

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end


    def happy?
        if self.happiness > 7 
            true
        else
            false
        end
    end

    def clean?
        if self.hygiene > 7 
            true
        else
            false
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def hygiene=(newScore)
        @hygiene = newScore
        if @hygiene < 0
            @hygiene = 0
        elsif @hygiene > 10
            @hygiene = 10
        end
    end

    def happiness=(newHappyScore)
        @happiness = newHappyScore
        if @happiness < 0
            @happiness = 0
        elsif @happiness > 10
            @happiness = 10
        end
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"

            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
    
end