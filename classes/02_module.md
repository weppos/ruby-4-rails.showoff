!SLIDE
# Module


!SLIDE
# Module

    @@@ Ruby
    module Post
    end
    
    p = Post.new
    # => NoMethodError: undefined method `new' for Post:Module


!SLIDE
# Module

    @@@ Ruby
    module Post
      @@year = 2011

      def self.year
        @@year
      end

      def title
        "#{@title} (#{@@year})"
      end
    end
    
    p = Post.year
    # => 2011
    
    # How to get instance method #title ?!?


!SLIDE
# Mixin

    @@@ Ruby
    module Post
      @@year = 2011
      
      def title
        "#{@title} (#{@@year})"
      end
    end

    class Article
      include Post # <- Include the module Post
      
      def initialize(title)
        @title = title
      end
    end

    Article.new("I'm a Rubyist").title
    # => "I'm a Rubyist (2011)"
