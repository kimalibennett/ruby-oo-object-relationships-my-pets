require "pry"
class Owner
  attr_accessor :pets
  attr_reader :species, :name 
  
  @@all = []
  
  def initialize(name)  
    @name = name
    @species = "human"
    @pets = {:dogs => [], :cats => []}
    @@all << self 
    @cats = Cat             
  end 

  def say_species
    return "I am a #{@species}."
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
  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
  end
end

def buy_cat(cat_name)
  @pets[:cats] << Cat.new(cat_name,self)
end

def buy_dog(dog_name)
  @pets[:dogs] << Dog.new(dog_name,self)
end

def feed_cats
  self.cats.each do |cat|
    cats.mood = "happy"
end
end

def list_pets
  @pets
end

end

