require_relative './author.rb'

class Post
    @@all=[]
    def initialize(title)
        @title=title
        @@all<<self
    end
    attr_accessor :title, :author
    def self.all
        @@all
    end
    def author_name
        # if self.author
        #     self.author.name
        # end
        self.author ? self.author.name : nil
    end
end