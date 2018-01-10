require 'test_helper'

class Resolvers::CreateLinkTest < ActiveSupport::TestCase
  def perform(args = {})
    Resolvers::CreateLink.new.call(nil, args, {})
  end

  test 'creating new link' do
    link = perform(
      url: 'http://url.com',
      description: 'words'
    )

    assert link.persisted?
    assert_equal link.description, 'words'
    assert_equal link.url, 'http://url.com'
  end
end 
