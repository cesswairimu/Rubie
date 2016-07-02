require 'minitest/autorun'
require 'commas'

class TestCommas < MiniTest::Test

  def setup 
    @list = Commas.new
  end

  def test_it_print_one_word_alone
    @list = ['apple']
    assert_equal('apple', @list.join)
  end
  
  def test_it_joins_two_words_with_and
    @list.items = ['apple', 'guava']
assert_equal('apple and guava', @list.join)
  end

  def test_it_joins_three_words_with_commas
    @list.items = ['guava', 'apple', 'peas']
    assert_equal('guava, apple and peas', @list.join)
  end
end
