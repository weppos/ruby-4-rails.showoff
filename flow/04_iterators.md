!SLIDE
# Iterators and Enumerable


!SLIDE
# Internal Iterators

    @@@ Ruby
    # The most common internal iterator is #each
    # See Enumerable module
    [].each { ... }
    
    3.times { ... }
    
    1.upto(10) { ... }
    
    10.downto(1) { ... }


!SLIDE
# `for`

    @@@ Ruby
    for item in %w( foo bar baz )
      # ... item
    end


!SLIDE
# Enumerable

    @@@ Ruby
    %w( foo bar baz ).each { |item| ... }
