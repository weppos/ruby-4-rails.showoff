!SLIDE subsection
# Exceptions


!SLIDE
# Exceptions

    @@@ Ruby
    begin
      # execute
    rescue
      # handle error
    else
      # execute when no errors
    ensure
      # always execute, with/without errors
    end


!SLIDE
# `begin` / `rescue`

    @@@ Ruby
    begin
      raise CustomError, "This is the message"
    rescue CustomError => error
      p error.message
    end
    
    # => "This is the message"


!SLIDE
# Defaults

    @@@ Ruby
    begin
      # When you don't specify an Error class,
      # by default raises a RuntimeError
      raise "Boom!"
    
    # Rescues all kind of StandardError
    rescue => error
    
      # ...
    
    end
    
    # => "Boom!"


!SLIDE
# Raising exceptions

    @@@ Ruby
    # Raises a RuntimeError with empty message
    raise
    
    # Raise a RuntimeError with message
    raise "Boom!"
    
    # Raise a CustomError with message
    raise CustomError, "Boom!"


!SLIDE
# Rescuing exceptions

    @@@ Ruby
    begin
      raise "This is the message"
    
    # rescues all kind of FooError
    rescue FooError => error
      # ...
    
    # rescues all kind of BarError
    rescue BarError => error
      # ...
    
    end

!SLIDE
# Implicit `begin`

    @@@ Ruby
    def hello
      ...
    rescue CustomError => error
      ...
    rescue => error
      ...
    rescue
      ...
    end


!SLIDE
# `retry`

    @@@ Ruby
    retries = 0
    
    begin
      Email.deliver
    rescue Email::Error => error
      if retries < 3
        retries += 1
        sleep 1
        retry
      else
        raise
      end
    end

