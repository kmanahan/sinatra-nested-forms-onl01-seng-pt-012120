require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
<<<<<<< HEAD
      "Welcome to the Nested Forms Lab!" 
=======
      ' 
>>>>>>> 6531b560f50ad8f74f91175b4501d8f42120ea5c
    end 
    
    get '/new' do 
       erb :'pirates/new' 
    end
    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
 
      params[:pirate][:ships].each do |attributes|
      Ship.new(attributes)
      end
 
      @ships = Ship.all
      erb :'pirates/show'
    end
    end
end
