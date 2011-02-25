!SLIDE
# Class


!SLIDE
# Class

    @@@ Ruby
    class Article
    end
    
    a = Article.new
    # => #<Article:0x00000100999f70>
    
    a.class
    # => Article
    
    a.is_a?(Article)
    # => true


!SLIDE
# Class

    @@@ Ruby
    class Article
      def initialize(title)
        @title = tile
      end
      
      def title
        @title
      end
    end
    
    a = Article.new
    # => ArgumentError: wrong number of arguments (0 for 1)
    
    a = Article.new("I'm a Rubyist")
    # => #<Article:0x00000100999f70>
    
    p a.title
    # => "I'm a Rubyist"


!SLIDE
# Class

    @@@ Ruby
    class Article
      # Class variable
      @@year = 2011
      
      def initialize(title)
        # Instance variable
        @title = tile
      end
      
      def title
        "#{@title} (#{@@year})"
      end
    end
    
    a = Article.new("I'm a Rubyist")
    
    p a.title
    # => "I'm a Rubyist (2011)"


!SLIDE
# Class

    @@@ Ruby
    class Base
      def initialize(title)
        @title = tile
      end
      def title
        @title.to_s
      end
    end
    
    class Article < Base
      @@year = 2011
      def title
        "#{super} (#{@@year})"
      end
    end
    
    a = Article.new("I'm a Rubyist")
    
    p a.title
    # => "I'm a Rubyist (2011)"
