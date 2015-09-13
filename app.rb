require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get('/') do
  @header = 'Calculate Shipping Costs'
  erb(:form)
end

get('/receipt') do
  @header = 'Your Receipt:'
  parcel = Parcel.new(params.fetch('length').to_i(), params.fetch('height').to_i(), params.fetch('depth').to_i())
  @volume = parcel.volume()
  @cost = parcel.cost_to_ship()
  erb(:receipt)
end