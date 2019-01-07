require 'slack-ruby-client'
require 'open-uri'

Slack.configure do |config|
  config.token = 'xoxb-2869666478-509888571184-jVPnPOAcoM6xMmN9JvtFOnqG'
end

client = Slack::Web::Client.new(
  endpoint: 'http://slack-proxy/api',
  proxy: 'http://front-proxy:10000',
)

1.upto(10000) do |n|
  client.channels_info(channel: '#general')
  puts n
end
