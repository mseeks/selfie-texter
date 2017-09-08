require "twilio-ruby"

account_sid = ENV["TWILIO_ACCOUNT_SID"]
auth_token = ENV["TWILIO_AUTH_TOKEN"]

client = Twilio::REST::Client.new(account_sid, auth_token)

from = ENV["TWILIO_NUMBER"]
to = ENV["NUMBER_TO_TEXT"]

client.messages.create({
  from: from,
  to: to,
  body: "It's time to send another selfie."
})
