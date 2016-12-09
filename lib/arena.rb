class Arena
  def initialize (name)
    @name = name.capitalize
    @gladiators = []
  end

  def name
    return @name
  end

  def gladiators
    return @gladiators
  end

  def add_gladiator(new_gladiator)
    if @gladiators.length < 2
    @gladiators.push(new_gladiator)
    end
  end

  def fight
  

    if @gladiators.count == 2
      if @gladiators.first.weapon == @gladiators.last.weapon
        @gladiators.pop(2)
      elsif @gladiators.first.weapon == "Trident" && @gladiators.last.weapon == "Club"
        @gladiators.delete_at(0)
      elsif @gladiators.first.weapon == "Trident" && @gladiators.last.weapon == "Spear"
        @gladiators.delete_at(1)
      elsif @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Trident"
        @gladiators.delete_at(0)
      elsif @gladiators.first.weapon == "Spear" && @gladiators.last.weapon == "Club"
        @gladiators.delete_at(1)
      elsif @gladiators.first.weapon == "Club" && @gladiators.last.weapon == "Trident"
        @gladiators.delete_at(1)
      elsif @gladiators.first.weapon == "Club" && @gladiators.last.weapon == "Spear"
        @gladiators.delete_at(0)
    end
  end
end
end
