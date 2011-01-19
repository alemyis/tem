# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Proverb::Application.initialize!

WillPaginate::ViewHelpers.pagination_options[:prev_label] = '&larr;'
WillPaginate::ViewHelpers.pagination_options[:next_label] = '&rarr;'