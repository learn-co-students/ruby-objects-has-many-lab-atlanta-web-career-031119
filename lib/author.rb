require 'pry'

class Author

  attr_accessor :name, :posts

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(post)
    post = Post.new(post)
    add_post(post)
  end

  def self.post_count
    count = 0
    for n in 0...@@all.size
      if @@all[n].posts.size > 0
        count += 1
      end
    end
    count
  end
end
