class Scraper 
  
  def get_site 
    Nokogiri::HTML(open("https://www.usatoday.com/entertainment/books/best-selling/"))
  end
   
  def info_container 
    self.get_site.css(".front-booklist-info-container")
  end
   
  def combine_info 
    self.info_container.collect do |container| 
         
        title = container.css(".books-front-meta-title").children[0].text   
        author = container.css(".books-front-meta-authorInfo").children[0].text 
        release_date = container.css(".books-front-meta-debut")[0].text.sub("Debuted:", "")
        genre = container.css(".books-front-meta-genre").text.split("Genre:").pop
        description = container.css(".books-front-meta-short").children[0].text 
        
        Books.new(title, author, release_date, genre, description)  
      end 
  end
  
end 
  
  
   

 