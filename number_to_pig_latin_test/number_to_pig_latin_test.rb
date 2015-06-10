
require 'minitest'
require 'minitest/autorun'
require './fixnum'

class NumberToPigLatinTest < MiniTest::Test

  def test_1_becomes_oneyay
  	assert_equal "oneyay", 1.to_pig_latin
  end	

  def test_2_becomes_wotay
  	assert_equal "wotay", 2.to_pig_latin
  end
  
   def test_6_becomes_six
    assert_equal "ixsay", 6.to_pig_latin
   end  	

   def test_20_becomes_twenty
   	assert_equal "entytway", 20.to_pig_latin
   end	

   def test_22_becomes_entytway_wotay
   	assert_equal "entytway wotay", 22.to_pig_latin
   end

   def test_30_becomes_irtythay
   	assert_equal "irtythay", 30.to_pig_latin
   end

   def test_34_becomes_irtythay_ourfay
   	assert_equal "irtythay ourfay", 34.to_pig_latin
   end

   def test_99_becomes_inetynay_inenay
   	assert_equal "inetynay inenay", 99.to_pig_latin
   end

   def test_100_becomes_oneyay_undredhay
   	assert_equal "oneyay undredhay", 100.to_pig_latin
   end

   def test_831_becomes_eightyay_undredhay_irtythay_oneyay
   	assert_equal "eightyay undredhay irtythay oneyay", 831.to_pig_latin
   end

   def test_3264_becomes_eethray_ousandthay_wotay_undredhay_ixtysay_ourfay
   	assert_equal "eethray ousandthay wotay undredhay ixtysay ourfay", 3264.to_pig_latin
   end

   def test_462971_becomes_ourfay_undredhay_etc
     assert_equal "ourfay undredhay ixtysay wotay ousandthay inenay undredhay eventysay oneyay", 462971.to_pig_latin
   end  
end