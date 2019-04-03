class Player
    DEFAULT_HIT_POINTS = 60
    attr_reader :name, :hit_points

    def initialize(name, hit_points = DEFAULT_HIT_POINTS)
      @name = name
      @hit_points = hit_points
    end

    def attack(player)
      player.receive_damage
    end

    def receive_damage(amount = 10)
      @hit_points -= amount
    end
  end
