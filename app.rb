require('sinatra')
require('sinatra/reloader')
require('./lib/tamagotchi')
also_reload('lib/**/*.rb')


get('/') do
  @tamagotchi = Tamagotchi.all()
  erb(:index)
end

post('/new') do
  @name = params.fetch("name")
  @new_pet = Tamagotchi.new(@name)
  @new_pet.save()
  erb(:output)
end

post('/status') do
  @tamagotchi = Tamagotchi.all()
  @name = @tamagotchi[0].name()
  @tamagotchi[0].update_pet(@tamagotchi[0].time_passes())
  erb(:changed)
end

post('/feed') do
  @tamagotchi = Tamagotchi.all()
  @name = @tamagotchi[0].name()
  @tamagotchi[0].add_food()
  erb(:changed)
end

post('/rest') do
  @tamagotchi = Tamagotchi.all()
  @name = @tamagotchi[0].name()
  @tamagotchi[0].add_sleep()
  erb(:changed)
end

post('/play') do
  @tamagotchi = Tamagotchi.all()
  @name = @tamagotchi[0].name()
  @tamagotchi[0].add_activity()
  erb(:changed)
end
