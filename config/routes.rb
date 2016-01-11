Rails.application.routes.draw do
  get '/weather', to: 'apis#weather'
  get '/books', to: 'apis#books'
  get '/spotify', to: 'apis#spotify'
end
