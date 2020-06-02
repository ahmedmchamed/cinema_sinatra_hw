require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/film')
also_reload('./models/*')

get('/films') do
  @film_list = Film.all()
  erb(:index)
end

get('/films/:filmid') do
  id = params[:filmid].to_i
  @film = Film.find_film_by_id(id)
  erb(:film_details)
end
