!SLIDE subsection
# Hash


!SLIDE
# Hash

    @@@ Ruby
    var = {}
    # => {}
    
    var = { "foo" => 1, "bar" => 2 }
    var = { :foo => 1, :bar => 2 }


!SLIDE
# Hash

    @@@ Ruby
    var = { :foo => 1, :bar => 2 }
    
    var[:baz]
    # => nil
    
    var[:foo]
    # => 1
    
    var[:foo] = 2
    # => 2
    
    var["foo"]
    # => nil
