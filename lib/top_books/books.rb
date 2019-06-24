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


end 