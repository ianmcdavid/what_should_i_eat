require "what_should_i_eat/version"
require "http"
require "json"
require "what_should_i_eat/printing"

module WhatShouldIEat
  class Error < StandardError; end
    def WhatShouldIEat.decide
      result = HTTP.get('https://www.edamam.com/search?type=Feeds').to_s
      recipes = JSON.parse(result)
      try = recipes.first['items'].first['label']
      url = recipes.first['items'].first['url']
      Printing.suggest try, url
      end
  end

