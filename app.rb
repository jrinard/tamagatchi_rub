require('sinatra')
require('sinatra/reloader')
require('./lib/tamagotchi')
also_reload('lib/**/*.rb')


get('/') do
  @tamagotchi = Tamagotchi.all()
  erb(:index)
end

post('/new') do
  name = params.fetch("name")
  new_pet = Tamagotchi.new(name)
  new_pet.save()
  erb(:index)
end

# post('/status') do
#   @tamagotchi[0].update_pet(@tamagotchi[0].time_passes())
#   erb(:index)
# end
