require_relative './post.rb'

class Author
    def initialize(name)
        @name=name
    end
    attr_accessor :name
    def posts
        Post.all.select {|p| p.author==self}
    end
end