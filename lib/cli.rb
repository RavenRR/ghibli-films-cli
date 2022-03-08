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
        puts "Would you like to explore the world of Studio Ghibli?"
        puts "----------------------------------------------------"
        sleep(2)
        puts "Y/N?"
        puts "----------------------------------------------------"
        input = gets.strip.downcase

        if input == "y"
            puts "There are multitudes of films to see, what will you choose first?"
            puts "----------------------------------------------------"
            display_title
        elsif input == "n"
            puts "----------------------------------------------------"
            puts "Farewell Spirit!"
            exit
        else
            puts "invalid choice"
            menu
        end
    end

    def display_title
        Film.all.each.with_index(1) do |film, index|
            puts "#{index}. #{film.title}"
        end
    end
end