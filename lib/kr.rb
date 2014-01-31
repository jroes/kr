require 'kr/version'

require 'cgi'
require 'heroics'
require 'netrc'

module Kr
  def self.connect
    username, token = Netrc.read["api.heroku.com"]
    configure_netrc if [username, token].any?(&:nil?)
    username = CGI.escape(username)
    url = "https://#{username}:#{token}@api.heroku.com/schema"
    options = {default_headers: {'Accept' => 'application/vnd.heroku+json; version=3'}}
    Heroics.client_from_schema_url(url, options)
  end

  # TODO: Yeah we should probably be more helpful
  def self.configure_netrc
    puts "Please configure your netrc for Heroku!"
  end
end
