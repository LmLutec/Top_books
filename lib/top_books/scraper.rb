require 'pry'
require_relative 'books.rb'
class Scraper 
  attr_accessor :all 
  
   def get_site 
     site = Nokogiri::HTML(open("https://www.barnesandnoble.com/b/top-books-of-the-month/_/N-2luc"))
     doc = ".product-shelf-title a"
     booklist = site.css(doc).collect.with_index {|page,index|
         "#{index + 1}:#{page.text}"}

     @booklist.select do |book|
          puts book
          @@all << book 
      end  
  
  #def scraper 
    # author = get_page(page).css(".product-shelf-author")
     
     
    #   author.collect do |writer|
    #         @@author << writer.text
    #   end 
    # titles.each_with_index do |book,index|
    #     book = Books.new 
    #     book.title = titles 
    #   end    
 
      #@@all << "#{index + 1}:#{book}" 
    #title.each.with_index {|book ,index|puts "#{index+=1}:#{book.text.strip}"}
      # writers = page.css(".product-shelf-author a").children
    # puts "#{titles[1]} by #{writers[1]}"
end   
  
  def create_book_list
    binding.pry 
    titles.collect do |book|
        book = Books.new 
        book.title = titles 
      end 
  end 
end 
  
  
  # def get_site 
  #   site = Nokogiri::HTML(open("https://www.barnesandnoble.com/b/new-releases/_/N-1oyg"))
  # end 
  
  # def get_books
  #   site = get_site 
  #       new_site = site.css(".product-shelf-title a")
  # end 
  
  # def create_book_list 
  #   get_books.collect do |new_site|
  #       book = Books.new 
  #       book.title = new_site.children 
  #       puts book.title
  #     end 
  # end
  #def scraper 
    # author = get_page(page).css(".product-shelf-author")
     
     
    #   author.collect do |writer|
    #         @@author << writer.text
    #   end 
    # titles.each_with_index do |book,index|
    #     book = Books.new 
    #     book.title = titles 
    #   end    
 
      #@@all << "#{index + 1}:#{book}" 
    #title.each.with_index {|book ,index|puts "#{index+=1}:#{book.text.strip}"}
      # writers = page.css(".product-shelf-author a").children
    # puts "#{titles[1]} by #{writers[1]}"
 