class API

    def initialize
        @url = "https://ghibliapi.herokuapp.com"
    end
    
    def get_film_data
        film_hash = HTTParty.get(@url + "/films")
        binding.pry
    end
end