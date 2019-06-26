class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    @@all = []

    def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        @@all << self
    end

    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def happy?
    #returns true if happiness is greater than seven, else false (FAILED - 1)
        if @happiness > 7
            true
        else 
            false
        end
    end

    def clean?
        #returns true if hygiene is greater than seven, else false (FAILED - 1)
            if @hygiene > 7
                true
            else 
                false
            end
    end

    def get_paid(salary)
    #accepts an argument of salary (FAILED - 1)
    #increments bank_account by the salary (FAILED - 2)
    #returns 'all about the benjamins' (FAILED - 3)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        #makes the person cleaner by 4 points (FAILED - 1)
        #returns a song (FAILED - 2)
        #can't make a person cleaner by 10 points (hint: use the custom #h
        
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"

    end #end take_bath

    def work_out
       # makes the person dirtier by 3 points (FAILED - 1)
       # never makes the person have negative dirty points
       #   (hint: use the #hygiene= method) (FAILED - 2)
       # calls on the #hygiene= method to decrease hygiene (FAILED - 3)
       # makes the person happier by 2 points (FAILED - 4)
       # never makes the person have more than 10 happiness points
       #   (hint: use the #happiness= method) (FAILED - 5)
       # calls on the #happiness= method to increment happiness (FAILED - 6)
       # returns Queen lyrics (FAILED - 7)
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    
    end #work_out

    def call_friend(person)
        #accepts one argument, an instance of the Person class (FAILED - 1)
        #makes the person calling happier by three points (FAILED - 2)
        #makes the friend happier by three points (FAILED - 3)
        #never makes the happiness of either party exceed 10
        #  (hint: use the cutom #happiness= method) (FAILED - 4)
        #calls on the #happiness= method to increment happiness (FAILED - 5)
        #returns a string that reflects the caller's side of the conversation (FAILED - 6)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end # end call_friend

    def start_conversation(person, topic)
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

    end # end start_conversation

end #class