class CLI
    def run
        greeting
        API
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
    end
end