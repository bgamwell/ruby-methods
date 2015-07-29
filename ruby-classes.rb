class Monster

  attr_accessor :habitat, :threat_level

  @@count = 0

  # default methods for whenever a new instance of monster is initialized
  def initialize
    puts "Rawr!"
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

  def fight(monster1, monster2)
     puts "Monster 1 is more dangerous!" if monster1.threat_level == "high" && monster2.threat_level == "low"
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
monster2 = Monster.new
monster.habitat = ("Under the bed")
monster.habitat?
monster.threat_level = ("high")
monster2.threat_level = ("low")
p Monster.count
p monster
p monster2
p monster.fight(monster,monster2)
