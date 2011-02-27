!SLIDE
# Proc and Lambda

    @@@ Ruby
    var = Proc.new { p Time.now }
    var = proc { p Time.now }
    var = lambda { p Time.now }

    var.call
    # => 2011-02-25 15:34:18 +0100

!SLIDE
# Blocks "are Procs"

    @@@ Ruby
    def m1(&block)
      p block.class
    end
    
    m1 do
      # ...
    end
    # Proc


!SLIDE
# You can pass Proc and Lambda

    @@@ Ruby
    printer = lambda { |item| p item.upcase }
    # => #<Proc:0x000001009e8738@(irb):15 (lambda)>
    
    %w( foo bar baz ).each(&printer)
    # "FOO"
    # "BAR"
    # "BAZ"


!SLIDE
# Symbol#to_proc

    @@@ Ruby
    %w( foo bar baz ).map { |i| i.upcase }
    # => ["FOO", "BAR", "BAZ"]
    
    %w( foo bar baz ).map(&:upcase)
    # => ["FOO", "BAR", "BAZ"]
    