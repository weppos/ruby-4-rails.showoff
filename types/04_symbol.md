!SLIDE subsection
# Sumbol


!SLIDE
# Symbol

    @@@ Ruby
    var = :foo

    var
    # => :foo
    
    var.to_s
    # => "foo"


!SLIDE
# Symbol

    @@@ Ruby
    :foo == :"foo"
    # => true
    
    :foo == "foo".intern
    # => true
    
    :foo == "foo".to_sym
    # => true


!SLIDE
# Symbol

    @@@ Ruby
    var = "Simone"
    
    var.respond_to?(:upcase)
    # => true
    
    var.send(:upcase)
    # => "SIMONE"
