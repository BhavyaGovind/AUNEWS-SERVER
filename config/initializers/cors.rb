# This config jacked from rack-cors Github (Which see)
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3000', 'http://localhost:3001',
    "https://bnpm-client.herokuapp.com/"##this needs an explicit list of your URLs on heroku
    resource '*',
    :headers => :any,
    :methods => %i( get post put patch delete options head )
    ##This %i makes the methods above methods into symbols
  end
end
