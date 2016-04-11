require_relative '../config/environment.rb'
require 'pry'

#Create a API class object
api = Api.new(FLASH_CARD_DATA)

puts "-------------- ARRAYS --------------"
api.all_array_methods{ |data| p data.command if data.name == "each"}

#puts "-------------- STRINGS --------------"
#api.all_string_methods{ |data| data.command }

#puts "-------------- FIXNUMS --------------"
#api.all_fixnum_methods{ |data| data.command }