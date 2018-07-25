require 'rails_helper'

RSpec.describe Posts do
  it 'fetches all posts from external api service' do
    expect(Posts.new.fetch.count).to eq(100*100)
  end
end