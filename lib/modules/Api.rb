require_relative '../../config/environment.rb'

require 'pry'

module ApiMethods

  module ClassMethods
    @@all = []

    def all=(value)
      @@all = value
    end

    def all
      @@all
    end

    def reset_all
      self.all.clear if self.all
    end

  end

  module InstanceMethods

    attr_reader :data

    def initialize(data)
      self.class.all << self
      @data = data

    end

    def fetch_type(type)
      if block_given?
        data[type].each do |command|

          new_command = Command.new(command)
          yield(new_command)

        end
      else
        puts "Please provide a block."
      end
    end

    def all_array_methods(&block)
      fetch_type("array", &block)
    end

    def all_string_methods(&block)
      fetch_type("string", &block)
    end

    def all_fixnum_methods(&block)
      fetch_type("fixnum", &block)
    end
  end

end