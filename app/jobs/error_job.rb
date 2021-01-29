class ErrorJob < ApplicationJob
  around_perform do |job, block|
    result = block.call
    puts ">>> I SHOULD NEVER BE EXECUTED! (#{result.class})"
  end
  
  def perform
    1/0
  end
end
