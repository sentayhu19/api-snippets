# Get twilio-ruby from twilio.com/docs/libraries/ruby
require 'twilio-ruby'

# Get your Account SID and Auth Token from twilio.com/console
# To set up environmental variables, see http://twil.io/secure
account_sid = ENV['TWILIO_ACCOUNT_SID']
auth_token = ENV['TWILIO_AUTH_TOKEN']

# Initialize Twilio Client
@client = Twilio::REST::Client.new(account_sid, auth_token)

@short_codes = @client.messaging.v1
                      .services('MG2172dd2db502e20dd981ef0d67850e1a')
                      .short_codes.list

@short_codes.each do |short_code|
  puts short_code.url
end
