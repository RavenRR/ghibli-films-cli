class API

    def initialize
        @url = "https://ghibliapi.herokuapp.com"
    end

    def get_film_data
        film_hash = HTTParty.get(@url + "/films")
        film_hash
    end

    def film_objects(film_array)
        film_array.each do |film_hash|
            Film.new(film_hash)
    end
end