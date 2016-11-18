require('sinatra')
require('sinatra/reloader')
require('./lib/word_count.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/inputt') do
  @final = params.fetch('user_input').word_frequency(params.fetch('user_input2'))
  erb(:result)
end
