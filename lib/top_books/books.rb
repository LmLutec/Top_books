require 'pry'
require_relative 'scraper.rb'


class Books 
  attr_accessor :title, :author, :release_date, :genre     
  
   @@all = [] 
  
  def initialize
    @title = title 
    @author = author 
    @release_date = release_date
    @genre = genre 
    @@all << self 
  end
  
  def self.all 
    @@all 
    binding.pry
  end 
  
  def self.start_list 
    Scraper.new.create_book_list
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