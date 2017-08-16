require'pry'

class Zombie
  @@horde = []
  @@plague_level = 10
  @@max_speed = 5 #WONT CHANGE
  @@max_strength = 8 #WONT CHANGE
  @@default_speed = 1 #WONT CHANGE
  @@default_strength = 3 #WONT CHANGE

  def initialize(speed,strength)
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
    if @out_run == true
      puts "survive_attack"

    elsif @survive_attack == true
      puts "you survived"

    else
      puts "you turned into zombie"
    end


  end

  def outrun_zombie?
  my_speed = rand(@@max_speed)
  zombie_speed = rand(19)
  @out_run = my_speed > zombie_speed

  end

  def survive_attack?
    zombie_fight = rand(10)
    my_fight = rand(@@max_speed)
    my_figth > zombie_fight
  end

  def self.all?
    return @@horde
  end

  def self.new_day
    Zombie.some_die_off
    Zombie.spawn
    Zombie.increase_plague_level
  end

  def self.some_die_off
    @@horde.delete(@@horde.sample)
  end

  def self.spawn
    num_zombies = rand(@@plague_level)
    @zombie = Zombie.new(@speed = rand(10),@strength = rand(20))
    @zombie = num_zombies

    @@horde << @zombie
  end

  def self.increase_plague_level
    @@plague_level += rand(2)
  end
end

# p Zombie.new(10,30)
# p Zombie.spawn
# p Zombie.spawn
puts Zombie.all?.inspect
Zombie.new_day
puts Zombie.all?.inspect
zombie1 = Zombie.all?[0]
zombie2 = Zombie.all?[1]
zombie3 = Zombie.all?[2]
puts zombie1.encounter
