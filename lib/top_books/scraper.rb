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
      
      title.collect do |book|
          @@title << book.text
      end 
  end   
    

  
  
end 