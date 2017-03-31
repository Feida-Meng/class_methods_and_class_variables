class Vampire

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

end
