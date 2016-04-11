require_relative '../../config/environment.rb'

require 'pry'

module CommandMethods

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
    attr_reader :type, :name, :variables, :command, :output, :comment, :change_original, :data

    def initialize(data)
      self.class.all << self
      @data = data
      self.fetch_attributes
    end

    def fetch_attributes
      @type = fetch_type
      @name = fetch_name
      @variables = fetch_variables
      @command = fetch_command
      @output = fetch_output
      @comment = fetch_comment
      @change_original = fetch_change_original
    end

    def fetch_type
      data["type"]
    end

    def fetch_name
      data["name"]
    end

    def fetch_variables
      data["variables"]
    end

    def fetch_command
      data["command"]
    end

    def fetch_output
      data["output"]
    end

    def fetch_comment
      data["comment"]
    end

    def fetch_change_original
      data["change_original"]
    end
  end
end