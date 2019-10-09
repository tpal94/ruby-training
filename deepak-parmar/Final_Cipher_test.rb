require 'minitest/autorun'
require_relative 'Cipher'

class Final_Cipher_test < MiniTest::Unit::TestCase

    def test_cipher_encode
         obj = Cipher.new
         plaintext = 'iamapandabear'
         inc=3
         pr= obj.encoding(plaintext,inc)
         assert_equal("ldpdsdqgdehdu",pr )
    end

    def test_cipher_decode
        obj1 = Cipher.new
        plaintextt = "ldpdsdqgdehdu"
        incc=3
        pr1= obj1.decoding(plaintextt,incc)
        assert_equal("iamapandabear", pr1)
    end

    def test_cipher_key
        obj2 = Cipher.new
        obj2.encoding('iamapandabear',3)
        plaintext ="aaaa"
        pr2 = obj2.key(plaintext)
        puts pr2
        assert_equal("iamapandabear", pr2)
    end
end


