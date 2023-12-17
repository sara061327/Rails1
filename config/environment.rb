# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

module ActiveRecord
    module Timestamp
      private
      def timestamp_attributes_for_update #:nodoc:
        [:update_time, :update_date, :updated_at]
      end
  
      def timestamp_attributes_for_create #:nodoc:
        [:make_time, :create_date, :created_at]
      end
    end
end