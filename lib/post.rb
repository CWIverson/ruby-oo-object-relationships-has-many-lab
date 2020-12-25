class Post
    @@all= []
    attr_accessor :author, :title
    def initialize(name)
        @name=name
        @author
        @@all<<self
    end
    def self.all
        @@all
    end
    def title
        @name
    end
    def author_name
        if @author == nil
        else
            @author.name
        end
    end

end