!SLIDE
# Methods


!SLIDE
# Methods

    @@@ Ruby
    class Article
      # Instance method
      def title
      end
      
      # Class method
      def self.title
      end
    end


!SLIDE
# Visibility

    @@@ Ruby
    class Article
      # Methods are public by default
      def title; end
      
      protected

        def foo; end
        def bar; end
      
      private
      
        def baz; end

    end

    Article.public_instance_methods
    # => => [:title, :nil?, ...]
    Article.protected_instance_methods
    # => => [:foo, :bar]
    Article.private_instance_methods
    # => [:baz, :default_src_encoding, :irb_binding, ..]


!SLIDE
# Visibility

    @@@ Ruby
    class Article
      # Methods are public by default
      def title; end
      def foo; end
      def bar; end
      def baz; end
      
      protected :foo, :bar
      private   :baz
    end


!SLIDE center
# Visibility explained

### [http://weblog.jamisbuck.org/2007/2/23/method-visibility-in-ruby](http://weblog.jamisbuck.org/2007/2/23/method-visibility-in-ruby)


!SLIDE
# Implicit return

    @@@ Ruby
    class Article
      def getter
        if @title
          @title
        else
          "No title!"
        end
      end
      def setter=(title)
        @title = title
      end
    end
    
    a = Article.new
    a.getter
    # => "No title!"
    a.setter = "I'm a title"
    # => "I'm a title"
    a.getter
    # => "I'm a title"


!SLIDE
# Implicit return

    @@@ Ruby
    class Article
      attr_accessor :title
      
      def no_ruby_way
        if @title
          @title.upcase
        else
          nil
        end
      end
      
      def ruby_way
        if @title
          @title.upcase
        end
      end
    end
    
    a = Article.new
    a.ruby_way
    # => nil
    a.no_ruby_way
    # => nil


!SLIDE
# More Implicit return

    @@@ Ruby
    class Article
      attr_accessor :title
      
      # First with a value wins
      def m1
        title || "No title"
      end
      
      # Return value only if value exists, else nil
      def m2
        @title if @title
      end
      
      # Value or raise
      def m3
        title || raise("Missing title")
      end
    end


!SLIDE
# Explicit return

    @@@ Ruby
    class Article
      attr_accessor :title
      
      # Use return to exit from a method
      # and simplify code readability
      def m1
        return unless title
        
        result = "..."
        # do something
        # do something else
        result
      end
    end


!SLIDE
# Precedences

    @@@ Ruby
    def greetings
      "hello"
    end
    
    # Returns the result of #greetings method
    greetings
    # => "hello"
    
    # Variables take precedence over methods
    # in the same scope
    greetings = "ciao"
    
    greetings
    # => "ciao"
    self.greetings
    # => "hello"


# bang! (copy vs self)

    @@@ Ruby
    var = "yellow"
    
    var.upcase
    # => "YELLOW"
    var
    # => "yellow"
    
    var.upcase!
    # => "YELLOW"
    var
    # => "YELLOW"


# bang! (false vs raise)

    @@@ Ruby
    a = Article.new(:title => nil)

    a.save
    # => false

    a.save!
    # => raise ActiveRecord::RecordNotValid


# question?

    @@@ Ruby
    class Article
      attr_accessor :title
      
      def title?
        title && !title.strip.empty?
      end
    end
    
    a = Article.new
    a.title?
    # => false

    a.title = "Hello";  a.title?
    # => true

    a.title = "";  a.title?
    # => false


# Parameters

    @@@ Ruby
    def m0        # <- do not use m0()
    end
    m0            # <- do not use m0()
    
    def m1(foo, bar)
    end
    m1(1, 2)
    m1(1)         # ArgumentError
    
    def m2(foo, bar = nil)
    end
    m2(1, 2)
    m2(1)
    
    def m3(foo = nil, bar)  # From Ruby 1.9.
    end
    m3(1, 2)
    m3(2)


# Parameter Overloading

    @@@ Ruby
    def m4(*args)
      p args
    end
    
    m4 "foo"
    # => ["foo"]
    
    m4 "foo", "bar"
    # => ["foo", "bar"]
    
    def m5(*args)
      case args.size
      when 1
        # ...
      when 2
        # ...
      else
        # ...
      end
    end
    
