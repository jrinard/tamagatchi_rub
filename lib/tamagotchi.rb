class Tamagotchi
  @@all_tama = []

  define_method(:initialize) do |name|
    @name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
    @life_level = 30
    @creation_time = Time.new()
  end

  define_singleton_method(:all) do
    @@all_tama
  end

  define_method(:save) do
    @@all_tama.push(self)
  end

  define_method(:name) do
    @name
  end

  define_method(:life_update) do
    @food_level + @sleep_level + @activity_level
  end

  define_method(:life_level) do
    @life_level = self.life_update()
  end

  define_method(:is_alive?) do
    if @life_level > 0
      true
    elsif @life_level <= 0
      false
    end
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:add_food) do
    @food_level += 1
    self.update_pet(self.time_passes)
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:add_sleep) do
    @sleep_level += 1
    self.update_pet(self.time_passes)
  end

  define_method(:activity_level) do
    @activity_level
  end

  define_method(:add_activity) do
    @activity_level += 1
    self.update_pet(self.time_passes)
  end

  define_method(:time_passes) do
    time_now = Time.new()
    @difference = time_now.min() - @creation_time.min()
  end

  define_method(:update_pet) do |time|
    @food_level -= time
    @sleep_level -= time
    @activity_level -= time
    @life_level -= (time * 3)
    @creation_time = Time.new()
  end
end
