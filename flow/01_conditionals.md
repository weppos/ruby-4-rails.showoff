!SLIDE
# Conditionals


!SLIDE
# `if`

    @@@ Ruby
    if foo == "bar"
      # ...
    end


!SLIDE
# `elsif` / `else`

    @@@ Ruby
    if 1 == 2
      # ...
    elsif 2 == 3
      # ...
    else
      # ...
    end


!SLIDE
# `unless`

    @@@ Ruby
    unless foo == "bar"
      # ...
    end


!SLIDE
# `unless` / `else`

## You can, but you shouldn't

    @@@ Ruby
    unless foo == "bar"
      # ...
    else
      # ...
    end


!SLIDE
# `case`

    @@@ Ruby
    case foo
    when "bar"
      ...
    when "baz"
      ...
    else
      ...
    end


!SLIDE
# `case` and `===`

    @@@ Ruby
    # case uses === for comparison

    case foo
    when "bar"
      ...
    when /^bar/
      ...
    when String
      ...
    end


