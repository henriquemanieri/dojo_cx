response = nil

Dado(/^que eu faça a requisição de criaçao de um comentrio$/) do
  begin
    response = HTTParty.post("http://jsonplaceholder.typicode.com/comments/",
    :body => {'title'=> "Teste teste 1",
              'body'=> 'Body teste',
              'userId'=> 3
            }.to_json,
            :headers => {'Content-Type' => 'application/json'})
             puts response.code
  end

end

Entao(/^valido o codigo de resposta par criação esperado$/) do
  expect(response.code).to  eq 200
  puts "Validado o recebimento de resposta 201"
  puts response.body
end
