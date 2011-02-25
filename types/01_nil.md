!SLIDE subsection
# `nil`


!SLIDE
# `nil`

    @@@ Ruby
    # nil is the Ruby value for null
    var = nil
    
    # Check if the value is nil
    var.nil?
    # => true
    
    # Alternative version, almost never used
    var == nil
    # => true


!SLIDE
# `nil`

    @@@ Ruby
    
    # nil evaluates to false
    nil ? true : false
    # => false
