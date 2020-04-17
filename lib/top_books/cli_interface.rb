class Cli_interface   

  def get_input(choice) 
    choice = choice.to_i 
     if choice.between?(1,10)
     user_requested = Books.all[choice - 1]
     puts "Author: #{user_requested.author}"
     puts "Title: #{user_requested.title}"
     puts "Genre: #{user_requested.genre}"
     puts "Description: #{user_requested.description.strip}."
     puts "Debuted: #{user_requested.release_date}"
     puts "\n"
     return_to_list
    else 
      puts "INVALID INPUT, TRY AGAIN"
      puts "\n"
      start 
   end 
  end 
  
  def return_to_list 
    puts "Would you like to browse through more books? Reply 'y' for yes and 'n' for no."
    @browse = gets.strip 
    @browse = @browse.capitalize
    if @browse == "Y"
      start 
    elsif @browse == "N" 
        puts "Thanks for stopping by!"
    else 
      puts "Invalid choice. Please try again."
      puts "\n"
      return_to_list
    end 
  end 
  
  def start
    puts "Below is a list of the current Best-Selling Books according to USA TODAY: " 
    puts "\n"
    Books.create_list
    puts "\n"
    puts "Choose a number to view the book's information."
    choice = gets
    puts "\n"
    get_input(choice)
  end 
  
end  