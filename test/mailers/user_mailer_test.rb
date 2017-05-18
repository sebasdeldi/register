require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "password_information" do
    mail = UserMailer.password_information
    assert_equal "Password information", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
