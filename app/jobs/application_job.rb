class ApplicationJob < ActiveJob::Base
  rescue_from Exception do |exception|
    puts ">>> RESCUED"
  end
end
