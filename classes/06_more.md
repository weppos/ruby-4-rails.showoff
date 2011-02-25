!SLIDE
# More


!SLIDE
# Namespaces

    @@@ Ruby
    class Project
      module Shared
      end
      class Article
        include Shared
      end
    end
    
    class News
      include Project::Shared
    end
    
    Project::Article.new


!SLIDE
# Reopening Classes

    @@@ Ruby
    class Article
      attr_accessor :title
    end
    
    # ...
    
    class Article
      def foo
        "foo!"
      end
    end
    
    a = Article.new
    a.foo
    # => "foo!"


!SLIDE
# Reopening Core Classes

    @@@ Ruby
    "".respond_to?(:to_json)
    # => false
    2.respond_to?(:to_json)
    # => false
    
    class Object
      def to_json
        JSON.encode(self)
      end
    end
    
    %w( foo bar ).to_json
    "[\"foo\",\"bar\"]"


!SLIDE
# Notable Extensions

    @@@ Ruby
    %w( foo bar ).to_xml
    # <?xml version="1.0" encoding="UTF-8"?>
    # <strings type="array">
    #   <string>foo</string>
    #   <string>bar</string>
    # </strings>
    
    3.days
    # => 259200
    
    3.days.ago
    # => Tue, 22 Feb 2011 10:55:59 UTC +00:00
    
    1.week.from_now
    # => Fri, 04 Mar 2011 10:56:16 UTC +00:00
    
    Post.where(:published_at => 1.hour.ago)

### [ActiveSupport](http://as.rubyonrails.org/)

