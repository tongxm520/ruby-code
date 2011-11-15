# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ZendReader::Application.initialize!

require "#{Rails.root}/lib/parse_rss" rescue nil
require "#{Rails.root}/lib/util" rescue nil

