# by requiring this file, the default configuration to run tests is loaded
# any methods written in this file are available to all tests
require "test_helper"

# PostTest defines a test case because it inherits from ActiveSupport::TestCase
class PostTest < ActiveSupport::TestCase
  
  test "should not save post without title" do
    post = Post.new
    assert !post.save, "Saved the post without a title"
  end
end
