require_relative 'atbash'
require 'minitest/autorun'

class TestAtbash < Minitest::Test
   
    def test_decode_yes
    #   skip
      assert_equal 'bvh', Atbash.decode('yes')
    end

    def test_decode_test
        # skip
      assert_equal 'gvhg', Atbash.decode('test')
    end

      def test_decode_long_word
        #skip
        assert_equal 'nrmwyoldrmtob', Atbash.decode('mindblowingly')
      end

end