class Author
    attr_accessor :name
    def initialize(name)
        @name=name
        @posts=[]
    end
    def posts
        Post.all.each do |post|
            #binding.pry
              if post.author.name == @name 
                  @posts<<post
                 # binding.pry
              end
          end
          
          #binding.pry
        @posts
    end
    def add_post(post)
        post.author=(self)
    end
    def add_post_by_title(post_title)
        post_author=Post.new(post_title)
        post_author.author=(self)
    end
    def self.post_count
        Post.all.uniq.length
    end
end