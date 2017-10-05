Dado(/^que eu faça a requisição de leitura do livro criado$/) do
  begin
    @response = Books.new.get_created_book(1)
    puts @response.body
  end
end


Entao(/^valido o codigo de resposta esperado$/) do
  binding.pry
  expect(@response.code).to eq 200
  puts "Validado o recebimento de resposta 200"
end
