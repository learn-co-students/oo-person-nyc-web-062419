# your code goes here
require 'pry'
class Person
attr_reader :name, :happiness, :hygiene, :bank_account

def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
end

def bank_account=(amount)
  @bank_account += amount
end

def happiness=(points)
  # binding.pry
  if points >= 0 && points <= 10
    @happiness = points
  elsif points < 0
    @happiness = 0
  elsif points > 10
    @happiness = 10
  end
end

def hygiene=(points)
  # binding.pry
  if points >= 0 && points <= 10
    @hygiene = points
  elsif points < 0
    @hygiene = 0
  elsif points > 10
    @hygiene = 10
  end
end

def clean?
  if @hygiene > 7
    return true
  else
    return false
  end
end

def happy?
  if @happiness > 7
    return true
  else
    return false
  end
end

def get_paid(amount)
  @bank_account += amount
  "all about the benjamins"
end

def take_bath
  self.hygiene=(@hygiene+4)
   "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.happiness=(@happiness+2)
  self.hygiene=(@hygiene-3)
   "♪ another one bites the dust ♫"
end

def call_friend(friend)
  friend.happiness += 3
  self.happiness += 3
  "Hi #{friend.name}! It's #{@name}. How are you?"
end

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
end
end
