require 'pry'
require_relative 'scraper.rb'

class Books 
  attr_accessor :all  
  
   @@all = [] 
  
  def initialize
    
  end
  
  def all 
    @@all 
    binding.pry 
  end 
end 
  # def new_book
  #   @scraped.collect do |book|
  #     book = Books.new
  #   end 
  # end
  
  # def booklist 
  #   @booklist.each_with_index do |book,index|
  #     puts "#{index + 1}:#{book}"
  #     end   
  # end 

  # def get_input(input)
  #   puts "Select the Title number to view more about that New Release:" 
  #   input = gets.strip
  #   new_input = input+=1 
  #   @new_input = new_input 
  # end
  

  # def match 
  #   puts @booklist[@new_input]
  # end 