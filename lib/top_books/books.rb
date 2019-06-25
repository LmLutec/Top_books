require 'pry'
class Books 
  attr_accessor :scraped, :title 
  
   @@booklist = [] 
  
  def initialize(title) 
    @title = title 
    @@booklist << @title 
  end
  
  def booklist 
    @booklist.each_with_index do |book,index|
      puts "#{index + 1}:#{book}"
      end   
  end 

  def get_input(input)
    puts "Select the Title number to view more about that New Release:" 
    input = gets.strip
    new_input = input+=1 
    @new_input = input 
  end
  
  def new_books
    @scraped.collect do |book|
      book = Books.new
    end 
  end 

  def match 
    puts booklist[new_input]
  end 
end 