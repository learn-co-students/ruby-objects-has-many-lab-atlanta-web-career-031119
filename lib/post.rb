require_relative './author.rb'

class Post
    @@posts=[]
    def initialize(title, author)
        @title=title
        @author=author
        @@posts<<self
    end
    attr_accessor :title, :author
end