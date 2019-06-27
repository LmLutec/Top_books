require 'pry'

class Books 
  attr_accessor :title   
  
   @@all = [] 
  
  def initialize
    @@all << self 
  end
  
  def all 
    @@all 
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