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

  describe('#life_suck') do
    it("decreases life level") do
      new_pet = Tamagotchi.new("dude")
      new_pet.life_suck(15)
      expect(new_pet.life_level()).to(eq(15))
    end
  end

  describe('#is_alive?') do
    it("is alive if the life level is above 0") do
      new_pet = Tamagotchi.new("Trogdor")
      expect(new_pet.is_alive?()).to(eq(true))
    end

    it("is dead if the life level is 0") do
      new_pet = Tamagotchi.new("Trogdor")
      new_pet.life_suck(30)
      expect(new_pet.is_alive?()).to(eq(false))
    end
  end

  describe('#food_suck') do
    it('decrease food level') do
      new_pet = Tamagotchi.new("Trogdor")
      new_pet.food_suck(5)
      expect(new_pet.food_level()).to(eq(5))
  end
end

  describe('#sleep_suck') do
    it('decrease sleep level') do
      new_pet = Tamagotchi.new("Trogdor")
      new_pet.sleep_suck(5)
      expect(new_pet.sleep_level()).to(eq(5))
    end
  end

  describe('#activity_suck') do
    it('decrease activity level') do
      new_pet = Tamagotchi.new("Trogdor")
      new_pet.activity_suck(5)
      expect(new_pet.activity_level()).to(eq(5))
    end
  end


end
