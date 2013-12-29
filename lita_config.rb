Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = "R2D2 Bot"
  config.robot.mention_name = "r2d2"

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :info

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ["1", "2"]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :campfire

  config.adapter.subdomain = ENV["CAMPFIRE_SUBDOMAIN"]
  config.adapter.apikey = ENV["CAMPFIRE_APIKEY"]
  config.adapter.rooms = ENV["CAMPFIRE_ROOMS"].split(',')
  config.adapter.debug = false
  config.adapter.tinder = { timeout: 30, user_agent: 'lita-campfire' }

  config.redis.url = ENV["REDISTOGO_URL"]
  config.http.port = ENV["PORT"]

  config.handlers.google_images.safe_search = :off
end