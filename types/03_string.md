!SLIDE subsection
# String


!SLIDE
# String

    @@@ Ruby
    var = 'string'
    var = "string"
    
    var = %q{string}
    var = %Q{string}
    
    var = <<-EOS
      long
      string
    EOS


!SLIDE
# String
## The Ruby way

    @@@ Ruby
    # Rubyists do not use \ to escape
    # because it makes the code hard to read
    var = "<a href=\"\#hello\">I'm a tag</a>"
    
    # They prefer a more natural syntax
    var = %q{<a href="#hello">I'm a tag</a>}


!SLIDE
# String
## Interpolation

    @@@ Ruby
    who = "world"
    
    var = 'hello #{who}'
    # => hello #{who}
    
    var = "hello #{who}"
    # => hello world
    
    var = %q{hello #{who}}
    # => hello #{who}
    
    var = %Q{hello #{who}}
    # => hello world


!SLIDE
# String
## Escape sequences

    @@@ Ruby
    
    var = 'hello\nworld'
    # => hello\nworld
    
    var = "hello\nnworld"
    # => hello
         world
    
    var = %q{hello\nnworld}
    # => hello\nnworld
    
    var = %Q{hello\nnworld}
    # => hello
         world


!SLIDE
# String
## % Notation

    @@@ Ruby
    
    "I love %s" % "Ruby"
    # => "I love Ruby"
    
    "I prefer %s over %s" % ["Ruby", "Java"]
    # => "I prefer Ruby over Java"
    
    vars = { :a => "Ruby", :b => "Java" }
    "I prefer %{a} over %{b}. I love %{a}!" % vars
    # => "I prefer Ruby over Java. I love Ruby!"


!SLIDE
# String

    @@@ Ruby

    # empty string evaluates to true
    "" ? true : false
    # => true

    # not-empty string evaluates to true
    "string" ? true : false
    # => true
