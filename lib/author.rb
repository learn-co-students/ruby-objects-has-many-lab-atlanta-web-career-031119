class Author 
  
attr_accessor :name, :posts  

@posts = []
@@post_count = 0 

def initialize(name)

@name = name   
@posts = []

#@@post_count += 1 
end   


def self.post_count
  
@@post_count
end 

def add_post(post)
# it "takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author" do
#         hello_world = Post.new("Hello World")
#         betty.add_post(hello_world)
#         expect(betty.posts).to include(hello_world)
#         expect(hello_world.author).to eq(betty)
#       end
  
  @posts << post
   post.author = self 
   #self.posts = post
   @@post_count += 1 
 
end 

# describe "#add_post_by_title" do
#       it "takes in an argument of a post title, creates a new post with it and associates the post and author" do
#         betty.add_post_by_title("My Great Blog Post")
#         # binding.pry
#         expect(betty.posts.last.title).to eq("My Great Blog Post")
#         expect(betty.posts.last.author).to eq(betty)
#       end
    


def add_post_by_title(title)

newpost = Post.new(title)
newpost.author = self
@posts << newpost
@@post_count += 1 
end 


end   