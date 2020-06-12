require 'json'
require 'open-uri'

Ingredient.destroy_all
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingr_hash = open(url).read
parse = JSON.parse(ingr_hash)
counter = 0
parse['drinks'].length.times do
  @ingredient = Ingredient.new(name: parse['drinks'][counter]['strIngredient1'])
  counter += 1
  @ingredient.save
end

require "open-uri"

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
article = Cocktail.new(name: 'NES')
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
