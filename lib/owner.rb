require 'pry'
class Owner

  attr_reader :name, :cat
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def species
    "human"
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    Cat.all.select {|x| x.owner == self}
  end

  def dogs
    Dog.all.select {|x| x.owner == self}
  end

  def buy_cat(cat_name)
    Cat.all.select {|cat| Cat.name == cat_name}
    binding.pry
  end
end
