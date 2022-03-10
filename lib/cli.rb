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
        sleep(3)
    end

    def menu
        input = nil
        until input == "exit"
            display_title
            input = gets.chomp.downcase
        end

        goodbye
        exit
    end

    def display_title
        Film.all.each.with_index(1) do |film, index|
            puts "#{index}. #{film.title}"
        end
    end

    def goodbye
        puts "Farewell, spirit."
    end
end