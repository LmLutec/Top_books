require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative 'books.rb'

class Scraper 
  
  
  def get_site 
      Nokogiri::HTML(open("https://www.usatoday.com/entertainment/books/best-selling/"))
  end
   
  def info_container 
      self.get_site.css(".front-booklist-info-container")
  end
   
  def combine_info 
    self.info_container.collect do |container| 
        book = Books.new 
        book.title = container.css(".books-front-meta-title").children[0].text   
        book.author = container.css(".books-front-meta-authorInfo").children[0].text 
        book.release_date = container.css(".books-front-meta-debut")[0].text.sub("Debuted:", "")
        book.genre = container.css(".books-front-meta-genre").text.split("Genre:").pop
        book.description = container.css(".books-front-meta-short").children[0].text 
        end 
  end
end 
  
  
   
  # def ask_input(input)
  #   puts "Input a number"
  #     input = gets.strip 
  #   case input 
  #     when 1 
  #     grab_title.css(".href")
  #     when 2 
  #     puts @@new_array[1]
  #   end 
  # end 

    # .collect.with_index {|page,index|
    #     "#{index + 1}:#{page.text}"}
         
    # booklist = site.css(doc).collect.with_index {|page,index|
    #     "#{index + 1}:#{page.text}"}

    # @@booklist.select do |book|
          
    #       @@all << book 
    #   end  
  
  
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
 