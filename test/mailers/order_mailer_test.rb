require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "order_sending" do
    mail = OrderMailer.order_sending
    assert_equal "Order sending", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
