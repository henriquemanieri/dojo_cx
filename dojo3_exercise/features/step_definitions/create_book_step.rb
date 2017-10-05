

Dado(/^que eu faça a requisição de criação de um livro$/) do
  Books.new.create_book
end

Entao(/^valido o codigo de resposta da criação esperado$/) do
  @response = Books.new.create_book
  expect(@response.code).to eq 200
  puts "Validado o recebimento de resposta 200"
  puts @response.body
end
