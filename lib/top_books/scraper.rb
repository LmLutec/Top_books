require 'pry'
class Scraper 
  
site = "https://www.barnesandnoble.com/b/new-releases/_/N-1oyg"
page = Nokogiri::HTML(open(site))
@@scraped =[]
  
  
  def get_page(site, page)
     titles = page.css(".product-shelf-title a").children
    # writers = page.css(".product-shelf-author a").children
    # puts "#{titles[1]} by #{writers[1]}"
    @@scraped << titles 
  end 
  
  #def scraper 
    # author = get_page(page).css(".product-shelf-author")
     
     
    #   author.collect do |writer|
    #         @@author << writer.text
    #   end 
    
 
      
    #title.each.with_index {|book ,index|puts "#{index+=1}:#{book.text.strip}"}
      
  end   
    

  
  
end