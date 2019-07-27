require 'pry'
require_relative './post'

class Author

    attr_accessor :name, :post, :author, :title
    @@post_count = []
    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        @posts
    end

    def add_post(post)
        @@post_count<<post
        post.author = self
        self.posts<<post
    end

    def add_post_by_title(title)
        @@post_count<<post
        post = Post.new(title)
        post.author = self
        self.posts<<post
    end

    def self.post_count
        @@post_count.length
    end
end