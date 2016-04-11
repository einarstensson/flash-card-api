require_relative '../config/environment.rb'
require 'json'

#Fetch flash card data
FILE = File.read('../data/data.json')
FLASH_CARD_DATA = JSON.parse(FILE)