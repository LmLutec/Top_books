require 'nokogiri'
require 'open-uri'

class Books 
  def books 
    site = Nokogiri::HTML(open('https://www.barnesandnoble.com/'))
  end 

end 