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
  
  def self.all 
    @@all.each_with_index do |book, index|
      puts "#{index + 1}: #{book.title}"
    end 
  end 
  
  def get_input(selection) 
     selection = selection.to_i 
     selection.between?(1,10)
          puts @@all[selection]
  end 
  
end 
  