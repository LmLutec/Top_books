require 'pry'
class Books 
  def books 
    binding.pry 
    site = Nokogiri::HTML(open('https://www.barnesandnoble.com/'))
  end 

end 