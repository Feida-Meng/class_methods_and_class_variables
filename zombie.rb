class Zombie

  @@horde = []
  @@plague_level = 10
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3

  def self.all
    @@horde

  end

  def self.new_day
    some_die_off
    spawn
    increse_plague_level
  end

  def self.some_die_off
    @@horde.slice!( (-rand(10)-1),-1 )
  end

  def self.spawn
    @@plague_level = rand(10)
    @@plague_level.times do
      @@horde.push(Zombie.new( rand(@@max_speed),rand(@@max_strength) ) )
    end
  end

  def self.increse_plague_level
    @@plague_level += rand(2)
  end

  attr_reader :speed, :strength
  def initialize(speed,strength)

    if speed > @@max_speed
      @speed = @@default_speed
    else
      @speed = speed
    end

    if strength >= @@max_strength
       @strength = @@default_strength
    else
      @strength = strength
    end

  end

  def encounter

    if outrun_zombie?
      puts "Eat my dust"
    elsif survive_attack?
      @@horde.push(Zombie.new( rand(@@max_speed),rand(@@max_strength) ) )
      puts "Damn!"
    else
      puts "Lost my brain!"
    end

  end

  def outrun_zombie?

    player_speed = rand(@@max_speed)

    if player_speed > @speed
      return true
    else
      return false
    end

  end

  def survive_attack?
    player_strength = rand(@@max_strength)

    if player_strength > @strength
      return true
    else
      return false
    end

  end


end
