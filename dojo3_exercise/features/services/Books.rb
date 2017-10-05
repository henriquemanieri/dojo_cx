class Books

  include HTTParty

  base_uri "http://fakerestapi.azurewebsites.net/"
  format :json
  headers 'Content-Type' => 'application/json'
  attr_reader :payload

  def initialize(payload = {})
    @payload = payload
  end

  def get_books
    self.class.get("/api/books")
  end

  def get_created_book(id)
    self.class.get("/api/books/#{id}")
  end

  def create_book
    begin
      self.class.post("http://fakerestapi.azurewebsites.net/api/Books",
      :body => {
                "Title" => "Livro Dom Casmurro",
                "Description" => "dojo@cargox.com.br",
                "PageCount" => 256,
                "Excerpt" => "Sumário resumido",
                "PublishDate" => "2017-09-15T13:00:00.549505+00:00"
               }.to_json)
      end
  end

  def edit_created_book(id)
    begin
      self.class.put("http://fakerestapi.azurewebsites.net/api/Books/#{id}",
      :body => {'title'=> "Livro Dom Casmurro",
                'Description'=> "dojo@cargox.com.br",
                'PageCount'=> 256,
                'Excerpt'=> "Edição Especial do Dia das Mães",
                'PublishDate'=> "2017-09-15T13:00:00.549505+00:00"
               }.to_json)
    end
  end
end
