require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    if rand > 0.5
      "Hello, World!\n"
    else
      status 429
      "Too Many Requests\n"
    end
  end
end
