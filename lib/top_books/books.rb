
class Books 
  def books 
    site = Nokogiri::HTML(open('https://www.barnesandnoble.com/'))
  end 

end 