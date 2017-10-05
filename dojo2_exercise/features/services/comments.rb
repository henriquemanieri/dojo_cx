class Comments

  include HTTParty

  base_uri "https://jsonplaceholder.typicode.com"
  format :json
  headers 'Content-Type' => 'application/json'
  attr_reader :payload

  def initialize(payload = {})
    @payload = payload
  end

  def get_all
    self.class.get("/comments/")
  end

  def get(id)
    self.class.get("/comments/#{id}")
  end
end
