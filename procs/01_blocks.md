!SLIDE
# Blocks

    @@@ Ruby
    a = [:foo, :bar, :baz]
    
    a.each { |value| puts "Value: #{value}" }
    # Value: foo
    # Value: bar
    # Value: baz
    
    a.each do |value|
      puts "Value: #{value}"
    end
    # Value: foo
    # Value: bar
    # Value: baz


!SLIDE
# Implicit vs Explicit Block

    @@@ Ruby
    def benchmark(&block)
      stime = Time.now
      yield
      etime = Time.now
      puts "#{etime - stime} seconds"
    end
    
    benchmark do
      puts "Bunch of code"
      sleep(1)
    end


!SLIDE
# Implicit vs Explicit Block

    @@@ Ruby
    def benchmark
      stime = Time.now
      yield
      etime = Time.now
      puts "#{etime - stime} seconds"
    end

    def benchmark(&block)
      stime = Time.now
      block.call
      etime = Time.now
      puts "#{etime - stime} seconds"
    end


!SLIDE
# Block with parameters

    @@@ Ruby
    class CustomCache < Struct.new(:buffer)
      def cache
        yield @buffer
        @buffer
      end
    end
    
    class CustomCache < Struct.new(:buffer)
      def cache(&block)
        block.call(@buffer)
        @buffer
      end
    end
    
    CustomCache.new.cache do |c|
      # ...
      c << "foo"
      # ...
      c << "bar"
    end
    # => ["foo", "bar"]


!SLIDE
# Initialization block

    @@@ Ruby
    class Article < Struct.new(:title, published_at)
      def initialize(*args)
        super
        yield self if block_given? # <- Pass self as parameter
        self
      end
    end
    
    Article.new do |article|
      article.title = "Foo"
      article.published_at = Today
    end
    # => #<Article >


!SLIDE center
# yield vs &block

## yield is more efficient
## use &block when you need treat the block as variable


!SLIDE
# yield vs &block

    @@@ Ruby
    class ColorPicker
      def initialize
        @colors = []
      end
      def <<(*colors)
        @colors.push(*colors)
      end
      def each(&block) # <-- passing &block to Array#each
        @colors.each(&block)
      end
    end
    
    c = ColorPicker.new
    c << "yellow", "red"
    
    c.each do |color|
      puts color
    end
    # => yellow
    # => red

