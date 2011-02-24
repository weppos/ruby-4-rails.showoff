!SLIDE subsection
# Ruby


!SLIDE 
# Ruby is a Programming Language

    @@@ Ruby
    a = Thread.new {
      mutex.synchronize {
        # Thread 'a' now needs the resource
        resource.wait(mutex)
        # 'a' can now have the resource
      }
    }


!SLIDE
# Ruby is expressive

    @@@ Ruby
    # Method example
    def read(path)
      return nil unless File.exist?(path)
      File.read(path)
    end
    
    # RSpec example
    Post.last.should have(10).comments


!SLIDE
# Ruby is elegant

    @@@ Ruby
    # Sinatra example
    get '/' do
      'Hello world!'
    end

    # Block example
    ChessGame.new do |move|
      move.black_pawn(forward)
      move.white_pawn(forward)
      # ...
      move.white_queen(pwn_king)
    end
