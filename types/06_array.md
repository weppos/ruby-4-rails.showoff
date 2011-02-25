!SLIDE subsection
# Array


!SLIDE
# Array

    @@@ Ruby
    var = Array.new
    # => []
    
    var = ["foo", "bar", "baz"]
    # => ["foo", "bar", "baz"]
    
    var = [
           "foo",
           "bar",
           "baz",
           ]
    # => ["foo", "bar", "baz"]
    
    var = %w( foo bar baz )
    # => ["foo", "bar", "baz"]


!SLIDE
# Array

    @@@ Ruby
    var = ["foo", 0, "baz"]
    
    var = ["foo", ["bar", "baz"]]


!SLIDE
# Array

    @@@ Ruby
    var1 = %w( yellow orange )
    var2 = %w( red yellow )
    
    var1.size
    # => 2
    
    var1[1] = "blue"
    # => blue
    
    var1 + var2
    # => ["yellow", "blue", "red", "yellow"]


!SLIDE
# Enumerable

    @@@ Ruby
    var1 = %w( yellow orange red )
    
    var1.each { |color| p(color) }
    # => yellow
    # => orange
    # => red
    
    var1.map { |color| color.upcase }
    # => ["YELLOW", "ORANGE", "RED"]
    
    var1.select { |color| color.size == 3 }
    # => ["red"]
