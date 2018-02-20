class Author
  attr_accessor :name
  @@authors = []
  @@post_count = 0
  def initialize(name)
    @name = name
    @@authors << self
    @posts = []
  end
  
  def add_post(post)
  @posts << post
  post.author = self
  end
  
  def add_post_by_name(name)
    post = Post.new(name)
    @posts << post
    post.artist = self
  end
  
  def posts
    @posts
  end
  
  def self.post_count
    count = 0
    @@authors.each do |author|
      x = author.post.size
      count += x
    end
      @@post_count = count
      @@post_count
  end
end