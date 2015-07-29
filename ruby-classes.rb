class Monster

  attr_accessor :habitat
  @@count = 0

  # default methods for whenever a new instance of monster is initialized
  def initialize
    puts "Rawr!"
    @threat_level = "Meh"
    @@count = @@count + 1
  end

  # Create a getter for a class counter method
  def self.count
    @@count
  end

  # Getter method to create a new monster
  def new_monster
    @monster
  end

  def habitat?
    puts true if @habitat == "Under the bed"
  end

  # # Setter method for habitat
  # def habitat=(habitat)
  #   @habitat = habitat
  # end
  #
  # # Getter method for habitat once it's set
  # def habitat
  #   @habitat
  # end

end

monster = Monster.new
monster.habitat = ("Under the bed")
monster.habitat?
p Monster.count
p monster
