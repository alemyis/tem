# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Proverb::Application.initialize!

WillPaginate::ViewHelpers.pagination_options[:renderer] = 'MyLinkRenderer'
WillPaginate::ViewHelpers.pagination_options[:prev_label] = ''
WillPaginate::ViewHelpers.pagination_options[:next_label] = ''
