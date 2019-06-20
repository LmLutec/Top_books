require 'nokogiri'
require 'open-uri'

class Books 
  def books 
    html = Nokogiri::HTML(open('https://www.barnesandnoble.com/'))
  end 

end 