require 'pry'
class Owner
  attr_accessor
  attr_reader :name, :species

  @@all = []

  def initialize (name)
    @name = name
    @species = "human"
    @@all << self
  end

def say_species
  p "I am a #{species}."
end

def self.all
  @@all
end

def self.count
  @@all.count
end

def self.reset_all
  @@all.clear
end

def cats
  Cat.all.select do |cat|
    cat.owner == self 
  end
end 

def dogs
  Dog.all.select do |dog|
    dog.owner == self 
  end
end

def buy_cat(name)
  name = Cat.new(name, self)
  #binding.pry 
end

def buy_dog(name)
  name = Dog.new(name, self)
end

def walk_dogs 
  self.dogs.each do |dog| 
  dog.mood = "happy"
end 
end 

def feed_cats 
  self.cats.each do |cat| 
  cat.mood = "happy"
end 
end 

end

#joe = Owner.new("Joe")
#binding.pry 