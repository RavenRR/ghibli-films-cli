class CLI

    def initialize
        API.new.get_film_data
    end

    def run
        greeting
        menu
    end

    def greeting
        puts "Salutations fellow spirit, let's explore the films of Studio Ghibli"
        puts "----------------------------------------------------"
        puts "Please wait, loading menu...."
        puts "----------------------------------------------------"
        sleep(3)
    end

    def menu
        puts "There are multitudes of films to see, what will you choose first?"
        puts "----------------------------------------------------"
        display_title
    end

    def display_title
        Film.all.each.with_index(1) do |film, index|
            puts "#{index}. #{film.title}"
        end
    end
end