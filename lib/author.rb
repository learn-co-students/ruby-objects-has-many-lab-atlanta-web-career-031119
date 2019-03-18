require_relative './post.rb'

class Author
    def initialize(name)
        @name=name
    end
    attr_accessor :name
    def posts
        Post.all.select {|p| p.author==self}
    end
    def add_post(post)
        post.author=self
    end
    def add_post_by_title(title)
        new_post=Post.new(title)
        new_post.author=self
    end
    def self.post_count
        return Post.all.length
    end

end