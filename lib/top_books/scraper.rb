class Scraper 
  
  def scraper 
    
  
      site = "https://www.barnesandnoble.com/b/top-books-of-the-month/_/N-2luc"

      titles = Array.new
      authors = Array.new
      page = Nokogiri::HTML(open(site))

      author = page.css(".product-shelf-author").collect do |writer|
            authors << writer.text
      end 

      title = page.css(".product-shelf-title").collect do |book|
            titles << book.text
      end 
  end   
    

  
  
end 