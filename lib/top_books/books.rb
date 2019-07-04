require_relative 'scraper.rb'


class Books 
  attr_accessor :title, :author, :release_date, :genre, :description    
  
   @@all = []
  
  def initialize
    @title = title 
    @author = author 
    @release_date = release_date
    @genre = genre 
    @description = description
    @@all << self 
  end
  
  def create_list 
    @@all.each_with_index do |book, index|
      if book.title != nil
        puts "#{index + 1}: #{book.title}"
          end 
      end 
  end 
  
  def get_input(choice) 
     choice = choice.to_i 
     choice.between?(1,10)
     user_requested = @@all[choice - 1]
     puts "Author: #{user_requested.author}"
     puts "Title: #{user_requested.title}"
     puts "Genre: #{user_requested.genre}"
     puts "Description: #{user_requested.description.strip}."
     puts "Debuted: #{user_requested.release_date}"
     puts "\n"
     return_to_list
  end 
  
  def return_to_list 
    puts "Would you like to browse through more books? Reply 'y' for yes and 'n' for no."
    @browse = gets.strip 
    @browse = @browse.capitalize!
    if @browse == "Y"
      start 
    elsif @browse != "N" && @browse != "Y"
      puts "Invalid choice. Please try again."
      puts "\n"
      return_to_list
    end 
  end 
  
  def start
    puts "Below is a list of the current Best-Selling Books according to USA TODAY: " 
    puts "\n"
    create_list
    puts "\n"
    puts "Choose a number to view the book's information."
    choice = gets 
    get_input(choice)
  end 
  
end 
  