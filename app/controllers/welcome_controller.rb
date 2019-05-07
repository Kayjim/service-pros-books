class WelcomeController < ApplicationController
  def index
    /get request returns a response that I go ahead and set to a variable/
    @books = HTTParty.get('https://servicepros-test-api.herokuapp.com/api/v1/books')
  end

  /sort books by category/

  def title
    /there is an implicit return in index method that is why we are able to get values to sort/
    @books = index.sort_by { |book| book['title'] }
  end

  def author
    @books = index.sort_by { |book| book['author'] }
  end

  def year
    /some values are null and some books are empty strings? Since empty strings are truthy we need two checks to sort correctly/
    @books = index.sort_by { |book| !book['year'].nil? && book['year'] != '' ? book['year'] : "z" }
  end
end
