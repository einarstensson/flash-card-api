require_relative '../../config/environment.rb'

class Api
  extend ApiMethods::ClassMethods
  include ApiMethods::InstanceMethods
end