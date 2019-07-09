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
          end 
      end 
  end 
  
  def self.all 
    @@all 
  end 
  
  
end 
  