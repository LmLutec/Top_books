require_relative "top_books/version"
require_relative "top_books/books.rb"
require 'nokogiri'
require 'open-uri'
require 'pry'

module TopBooks
  class Error < StandardError; end
  # Your code goes here...
end
