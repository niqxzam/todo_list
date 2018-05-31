require 'twitter'
 
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_API_Key"]
  config.consumer_secret     = ENV["TWITTER_API_Secret"]
  config.access_token        = ENV["Twitter_Access_Token"]
  config.access_token_secret = ENV["Twitter_Access_Token_Secret"]
end
