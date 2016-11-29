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


end
