class Posts
  include HTTParty
  base_uri 'jsonplaceholder.typicode.com'

  def fetch
    records = []
    100.times do
      records = records + self.class.get('/posts')
    end
    records
  end
end