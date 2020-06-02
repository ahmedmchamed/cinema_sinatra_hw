require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/film')

get('/films') do
  return @all_films_list = Film.all()
  erb(:index)
end
