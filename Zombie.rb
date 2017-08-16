class Zombie
  @@horde = []
  @@plague_level = 10
  @@max_speed = 5 #WONT CHANGE
  @@max_strength = 8 #WONT CHANGE
  @@default_speed = 1 #WONT CHANGE
  @@default_strength = 3 #WONT CHANGE

  def initialize(speed, strength)
    @speed = speed
    @strength = strength
    if @speed > @@max_speed
      @speed = @@max_speed

    end
    if @strength <= @@max_strength
    else
      @strength = @@default_strength
    end


  end

  def encounter
  end

  def outrun_zombie?
  end

  def survive_attack?
  end

  def self.all?
    @@horde
  end

  def self.new_day
  end

  def self.some_die_off
  end

  def self.spawn
    @@plague_level = rand(30)
    @@horde << @@plague_level
  end

  def self.increase_plague_level
  end
end

p zombie1 = Zombie.new(10, 10)
p Zombie.spawn
p @@horde
