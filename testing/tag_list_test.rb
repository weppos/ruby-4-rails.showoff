class TagList
  include Enumerable
  
  attr_reader :tags
  
  def initialize
    @tags = []
  end
  
  def add(tag)
    @tags << tag
    @tags.uniq!
    self
  end
  
  def remove(tag)
    @tags.delete_if { |t| t == tag }
    self
  end
  
  def each(&block)
    @tags.each(&block)
  end
end


if __FILE__ == $0
  
  require 'test/unit'
  
  class TagListTest < Test::Unit::TestCase
    def setup
      @i = TagList.new
    end
    
    def test_implements_enumerable
      assert TagList.ancestors.include?(Enumerable)
      assert TagList.public_instance_methods.include?(:each)
    end
    
    def test_initialize_requires_no_parameters
      assert_raise(ArgumentError) { TagList.new([]) }
      assert_nothing_raised { TagList.new }
    end
    
    def test_initialize_initializes_tags
      i = TagList.new
      assert_equal [], i.tags
    end
    
    def test_add_adds_a_tag
      assert_equal [], @i.tags
      @i.add("one")
      assert_equal ["one"], @i.tags
      @i.add("two")
      assert_equal ["one", "two"], @i.tags
    end
    
    def test_add_filters_duplicate_tags
      @i.add("one")
      assert_equal ["one"], @i.tags
      @i.add("one")
      assert_equal ["one"], @i.tags
    end
    
    def test_add_returns_self
      assert_equal @i, @i.add("tag")
    end
    
    def test_remove_removes_a_tag_if_tag_exists
      %w( one two ).each { |tag| @i.add(tag) }
      @i.remove("one")
      assert_equal ["two"], @i.tags
    end
    
    def test_remove_does_not_do_anything_if_tag_does_not_exist
      %w( one two ).each { |tag| @i.add(tag) }
      @i.remove("three")
      assert_equal ["one", "two"], @i.tags
    end
    
    def test_remove_returns_self
      assert_equal @i, @i.remove("tag")
    end
  end
  
end
