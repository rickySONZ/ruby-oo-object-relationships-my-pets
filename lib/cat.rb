class Cat
  # code goes here

  attr_accessor :mood, :owner

  @@all = []

  def initialize(name, owner)
    @owner = owner
    @name = name
    @mood = "nervous"
    @@all << self
  end

  def name
    @name
  end

  def self.all
    @@all
  end

  
end