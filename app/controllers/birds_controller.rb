class BirdsController < ApplicationController
  def index
    birds = Bird.all
    # render 'birds/index.html.erb'
    
    # render plain: "Hello #{@birds[3].name}"
    # This isn't very fancy, but this is actually enough 
    # for us to start using our JavaScript skills and access with a fetch() request.
    
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
        # passing string to be valid JSON 
    # render json: { message: 'Hashes of data will get converted to JSON' }
        # can also pass in hashes, arrays and other data
    
    # render json: ['As','well','as','arrays']    
          # arrays
    # render json: @birds
        # rendering from the @birds

    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
      # detailed nesting

    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json
        # "to_json" method is method availabe to both arrays and hashes
    render json: birds
  end
end
