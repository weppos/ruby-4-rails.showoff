!SLIDE
# Constants


!SLIDE
# Constants

    @@@ Ruby
    class Article
      YEAR = 2011   # <- Must be UPCASE
      
      def title
        "#{@title} #{YEAR}"
      end
    end
    
    Article::YEAR
    # => 2011

