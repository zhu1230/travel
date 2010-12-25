require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "send_advice" do
    mail = ContactMailer.send_advice
    assert_equal "Send advice", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
