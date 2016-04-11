require_relative '../../config/environment.rb'

class Command
  extend CommandMethods::ClassMethods
  include CommandMethods::InstanceMethods
end