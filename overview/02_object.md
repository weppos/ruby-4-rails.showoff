!SLIDE subsection
# Ruby.new


!SLIDE
# Ruby is a completely object-oriented language

    @@@ Ruby
    Object.new
    # => #<Object:0x0000010185d5c0>
    
    3.to_s
    # => "3"
    
    ["foo", "bar"].each { |i| i.upcase! }
    # => ["FOO", "BAR"]


!SLIDE
# Everything is an object

    @@@ Ruby
    nil.class
    # => NilClass

    true.class
    # => TrueClass

    false.class
    # => FalseClass

    1.class
    # => Fixnum


!SLIDE
# Everything is a `Object`

    @@@ Ruby
    String.ancestors
    # => [String, Comparable, Object, Kernel, BasicObject]
    
    
    class Holiday
    end
    
    Holiday.ancestors
    # => [Holiday, Object, Kernel, BasicObject]


!SLIDE
# `Object` is a `BasicObject`

### in Ruby >= 1.9

    @@@ Ruby
    Object.ancestors
    # => [Object, Kernel, BasicObject]
    
    BasicObject.ancestors
    # => [BasicObject]
