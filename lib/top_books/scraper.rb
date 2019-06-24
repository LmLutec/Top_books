require 'pry'
class Scraper 
  attr_reader :title, :author 
  
  def get_page(site)
    site = "https://www.barnesandnoble.com/b/books/_/N-1vZ29Z8q8"
    page = Nokogiri::HTML(open(site))
  end 
  
  def scraper 
    # author = get_page(page).css(".product-shelf-author")
     
     
    #   author.collect do |writer|
    #         @@author << writer.text
    #   end 
    
    title = get_page(page).css(".product-shelf-title")
    #binding.pry 
      
    title.each.with_index {|book ,index|puts "#{index+=1}:#{book.text.strip}"}
      
  end   
    

  
  
end
Scraper.new.scraper  