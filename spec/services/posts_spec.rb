require 'rails_helper'
require 'vcr_setup'

RSpec.describe Posts do
  it 'fetches all posts from external api service' do
    VCR.use_cassette('get posts') do
      expect(Posts.new.fetch.count).to eq(100*100)
    end
  end
end