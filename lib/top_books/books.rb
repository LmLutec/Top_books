require 'pry'
require_relative 'scraper.rb'


class Books 
  attr_accessor :title, :author, :release_date, :genre, :description    
  
   @@all = []
  
  def initialize(title = nil)
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
  end 
  
  
  
  def start
    Scraper.new.combine_info
    create_list
    puts "Choose a number to select book information"
    choice = gets 
    get_input(choice)
  end 
  
end 
  