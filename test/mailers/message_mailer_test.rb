require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase

  test "contact_me" do
    message = Message.new message_name: 'Nic',
                          message_email: 'nicgeorge6@gmail.com',
                          message_body: 'hello, how are you doing?'

    email = MessageMailer.contact_me(message)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal 'Message from www.murdo.ch', email.subject
    assert_equal ['nicgeorge6@gmail.com'], email.to
    assert_equal ['nicgeorge6@gmail.com'], email.from
    assert_match /hello, how are you doing?/, email.body.encoded
  end
end