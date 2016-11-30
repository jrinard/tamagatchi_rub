require('rspec')
require('pry')
require('tamagotchi')

describe(Tamagotchi) do
  describe('#name') do
    it("returns the name of the pet") do
      new_pet = Tamagotchi.new("Trogdor")
      expect(new_pet.name()).to(eq("Trogdor"))
    end
  end

  describe('#life_level') do
    it("returns life level") do
      new_pet = Tamagotchi.new("dude")
      new_pet.update_pet(1)
      expect(new_pet.life_level()).to(eq(27))
    end
  end

  describe('#is_alive?') do
    it("is alive if the life level is above 0") do
      new_pet = Tamagotchi.new("Trogdor")
      expect(new_pet.is_alive?()).to(eq(true))
    end

    it("is dead if the life level is 0") do
      new_pet = Tamagotchi.new("Trogdor")
      new_pet.update_pet(10)
      expect(new_pet.is_alive?()).to(eq(false))
    end
  end

  describe('#add_food') do
    it('increases food level') do
      new_pet = Tamagotchi.new("Trogdor")
      new_pet.add_food()
      expect(new_pet.food_level()).to(eq(11))
      expect(new_pet.life_level()).to(eq(31))
  end
end

  describe('#add_sleep') do
    it('increases sleep level') do
      new_pet = Tamagotchi.new("Trogdor")
      new_pet.add_sleep()
      expect(new_pet.sleep_level()).to(eq(11))
      expect(new_pet.life_level()).to(eq(31))
    end
  end

  describe('#add_activity') do
    it('decrease activity level') do
      new_pet = Tamagotchi.new("Trogdor")
      new_pet.add_activity()
      expect(new_pet.activity_level()).to(eq(11))
      expect(new_pet.life_level()).to(eq(31))
    end
  end

  describe("#time_passes") do
    it("passes the time") do
      new_pet = Tamagotchi.new("dude")
      new_pet.update_pet(6)
      expect(new_pet.life_level()).to(eq(12))
    end
  end

end
