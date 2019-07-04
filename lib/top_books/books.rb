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
    @@all.each_with_index do |book, index|
      if book.title != nil 
      puts "#{index + 1}: #{book.title}"
      binding.pry 
      end 
    end 
  end 
  
  def get_input(choice) 
     choice = choice.to_i 
     choice.between?(1,10)
      choice = choice + 1 
         @@all[choice]
  end 
  
  def start
    Scraper.new.combine_info
    create_list
    puts "Choose a number to select book information"
    number = gets 
    get_input(number)
    #binding.pry 
  end 
  
end 
  