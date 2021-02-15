class Owner
  # code goes here

  @@all = []

  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end


  def name
    @name
  end
  
  def species
    @species
  end

  def self.all
    @@all
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
end

def dogs
  Dog.all.select {|dog| dog.owner == self}
end

  def say_species
    "I am a #{species}."
  end

  def self.count
    Owner.all.count{|owner| owner}
  end

  def buy_cat(cat)
    cat = Cat.new(cat, owner = self)
  end

  def buy_dog(dog)
    dog = Dog.new(dog, owner = self)
  end

  def self.reset_all
    @@all = []
  end

  

  def feed_cats
    Cat.all.each do |cat|
      cat.mood = "happy"
    end
  end

    def walk_dogs
      Dog.all.each do |dog|
        dog.mood = "happy"
      end
    end

    def sell_pets
      Dog.all.each do |dog|
        dog.mood = "nervous"
        dog.owner = nil
      end
      Cat.all.each do |cat|
        cat.mood = "nervous"
        cat.owner = nil
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end
    
end

  



