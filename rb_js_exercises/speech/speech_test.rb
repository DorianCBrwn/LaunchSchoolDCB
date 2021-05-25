require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'speech'
Minitest::Reporters.use!

class SpeechTest < MiniTest::Test
  def test_1
    speech = Speech.new("One two three four five six seven eight nine ten")
    assert_equal("One two tHrEe four five sIx seven eight nInE ten", speech.transform_speech)
  end

  def test_2
    skip
    speech = Speech.new("I am again called upon by the voice of my country to execute the functions of its Chief Magistrate")
    assert_equal("I am aGaIn called upon bY the voice oF my country tO execute the fUnCtIoNs of its CHiEf Magistrate", speech.transform_speech)
  end

  def test_3
    skip
    speech = Speech.new("On taking this station on a former occasion.")
    assert_equal("On taking tHiS station on a former noisaccO.", speech.transform_speech)
  end

  def test_4
    skip
    speech = Speech.new("Though passion may have strained, it must not break our bonds of affection.")
    assert_equal("Though passion mAy have deniartS, iT must not bReAk our bonds oF noitceffA.", speech.transform_speech)
  end
end