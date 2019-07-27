require 'pry'
require_relative './author'

class Post


    attr_accessor :author, :title, :post, :name

    @@all = []

    def initialize(title)
        @title = title
        @author = nil
        @@all<<self
    end

    def self.all
        @@all
    end
    
    
    def author_name
        post = self
        if post.author == nil
            puts nil
        else
            post.author.name
        end
    end
end