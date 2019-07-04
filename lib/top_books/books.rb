require 'pry'
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
    @@all.shift
    @@all.each_with_index do |book, index|
      puts "#{index + 1}: #{book.title}"
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
     return_to_list
  end 
  
  def return_to_list 
    puts "Would you like to browse through more books?"
    @browse = gets.strip 
    @browse = @browse.capitalize!
    if @browse == "Y"
      start 
    elsif @browse != "Y" || @browse != "N"
      puts "Invalid choice. Please try again."
    end 
  end 
  
  def start
    Scraper.new.combine_info
    puts "Below is a list of USA TODAY's Best-Selling Books: " 
    puts "\n"
    create_list
    puts "\n"
    puts "Choose a number to view the book's information."
    choice = gets 
    get_input(choice)
  end 
  
end 
  