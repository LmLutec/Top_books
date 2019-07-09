require_relative "top_books/version"
require_relative "top_books/books.rb"
require_relative "top_books/scraper.rb"
require_relative "top_books/cli_interface.rb"

require 'nokogiri'
require 'open-uri'

module TopBooks
  class Error < StandardError; end
  # Your code goes here...
end
