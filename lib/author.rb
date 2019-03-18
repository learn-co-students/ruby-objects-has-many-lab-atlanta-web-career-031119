require_relative './post.rb'

class Author
    def initialize(name)
        @name=name
    end
    attr_accessor :name
end