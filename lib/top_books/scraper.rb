require 'pry'
require_relative 'books.rb'
class Scraper 
  @@scraped = []

  
  def get_page
    site = "https://www.barnesandnoble.com/b/new-releases/_/N-1oyg"
    page = Nokogiri::HTML(open(site))
  end 
  
  def get_book_titles 
     titles = page.css(".product-shelf-title a").children
    # writers = page.css(".product-shelf-author a").children
    # puts "#{titles[1]} by #{writers[1]}"
    @@scraped << titles 
    binding.pry 
  end 
  
  #def scraper 
    # author = get_page(page).css(".product-shelf-author")
     
     
    #   author.collect do |writer|
    #         @@author << writer.text
    #   end 
    
 
      
    #title.each.with_index {|book ,index|puts "#{index+=1}:#{book.text.strip}"}
      
end   
    

  
  