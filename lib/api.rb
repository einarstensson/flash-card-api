require_relative '../config/environment.rb'
require 'pry'

class Api
  extend ApiMethods::ClassMethods
  include ApiMethods::InstanceMethods
end