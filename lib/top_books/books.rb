require 'pry'
class Books 
  attr_accessor :scraped, :title 
  
   @@booklist = [] 
  
  def initialize(title) 
    @title = title 
    @@booklist << @title 
  end
  
  def booklist 
    @booklist   
  end 

  def get_input(input)
    puts "Select the Title number to view more about that New Release:" 
    input = gets.strip 
    @input = input 
  end

  def match 
    if @input = booklist[0]
    end 
  end 
end 