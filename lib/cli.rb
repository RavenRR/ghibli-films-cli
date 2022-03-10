class CLI

    def initialize
        API.new.get_film_data
        @input = nil
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
        until @input == "exit"
            display_title
        end

        goodbye
        exit
    end

    def display_title
        Film.all.each.with_index(1) do |film, index|
            puts "#{index}. #{film.title}"
        end
        show_film(user_input)
    end

    def show_film(input)
        film_obj = Film.all[input.to_i-1]
        puts "Title: #{film_obj.title}".colorize(:light_blue)
        puts "Director: #{film_obj.director}".colorize(:blue)
        puts "Producer: #{film_obj.producer}".colorize(:blue)
        puts "Description: #{film_obj.description}".colorize(:red)
        puts "Type menu to return to the main menu".colorize(:green)
        user_input
    end 

    def goodbye
        puts "Farewell, spirit."
    end

    def user_input
        @input = gets.chomp.downcase
        if @input == "exit"
            exit
        elsif @input == "menu"
            menu
        end
        @input
    end
end