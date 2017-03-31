class Vampire

  @@blood_suckers = []

  def self.create(name,age)
    @@blood_suckers.push( Vampire.new(name,age) )
  end

  def self.sunrise
    killed_v = @@blood_suckers.select {|v| (v.in_coffin == false || v.drank_blood_today == false) }
    @@blood_suckers.delete(killed_v)
  end

  def self.sunset
    @@blood_suckers.map { |v| v.in_coffin = false, v.drank_blood_today = false    }

  end


  def initialize(name,age)
    @name = name
    @age = age
    @in_coffin = true
    @drank_blood_today = false

  end

  def drink_blood
    @drank_blood_today = true
  end

  def go_home
    @in_coffin = true
  end

  def hunting
    drink_blood if rand(10) > 3
  end

end
