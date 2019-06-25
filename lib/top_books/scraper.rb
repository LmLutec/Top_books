require 'pry'
require_relative 'books.rb'
class Scraper 
  
  
  def get_site 
     site = Nokogiri::HTML(open("https://www.barnesandnoble.com/b/new-releases/_/N-1oyg"))
  end 
  
  def get_books
     titles = get_site site.css(".product-shelf-title a").children
  end 
  
  def create_book_list
    
        book = Books.new 
        book.title = titles 
      end 
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