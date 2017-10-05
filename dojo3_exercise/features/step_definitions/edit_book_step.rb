Dado(/^que eu faça a requisição de edição do livro criado$/) do
  @response = Books.new.edit_created_book(2)
  puts @response.code
end

Entao(/^valido o codigo de resposta da edição esperado$/) do
  @response = Books.new.edit_created_book(2)
  expect(@response.code).to eq 200
  puts "Validado o recebimento de resposta 200"
  puts @response.body
end
