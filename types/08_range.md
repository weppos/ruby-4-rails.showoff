!SLIDE subsection
# Range


!SLIDE
# Range

    @@@ Ruby
    2..4
    # => 2..4
    
    2...4
    # => 2...4
    
    
    (2..4).to_a
    # => [2, 3, 4]
    
    (2...4).to_a
    # => [2, 3]


!SLIDE
# Range

    @@@ Ruby
    (1..3).to_a
    # => [1, 2, 3]

    ("1".."3").to_a
    # => ["1", "2", "3"]

    ("A".."C").to_a
    # => ["A", "B", "C"]

    ("a".."c").to_a
    # => ["a", "b", "c"]


!SLIDE
# Range

    @@@ Ruby
    (1..3).include?(2)
    # => true

    (1..3).include?(5)
    # => false


!SLIDE
# Range

    @@@ Ruby
    (1..3).each do |counter|
      p(counter)
    end
    # 1
    # 2
    # 3

    (1..3).map do |counter|
      Post.new(:id => counter)
    end
    # => [Post, Post, Post]
