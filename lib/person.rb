# your code goes here
class Person
attr_reader :name
attr_accessor :bank_account, :happiness, :hygiene


def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
end

def happiness=(num)
    @happiness = num.clamp(0, 10)
   
end

def hygiene=(num)
    @hygiene= num.clamp(0, 10)
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

def get_paid(amount)
@bank_account = @bank_account + amount
"all about the benjamins"
end

def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.hygiene -= 3
    self.happiness += 2 
    "♪ another one bites the dust ♫"
end
def call_friend(person)
person.happiness += 3
self.happiness += 3
"Hi #{person.name}! It's #{self.name}. How are you?"
end


def start_conversation(person, topic)
case topic
when 'politics'
    self.happiness -= 2
    person.happiness -= 2
    'blah blah partisan blah lobbyist'
when 'weather'
    self.happiness += 1
    person.happiness += 1
    'blah blah sun blah rain'
else 
    "blah blah blah blah blah"
end
end


end