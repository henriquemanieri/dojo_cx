Dado(/^que eu faça a requisição de de leitura de todos os comentario$/) do
  begin
    @response = Comments.new.get_all
    puts @response.body
  end
end

Dado(/^que eu faça requisição de leitura e um "(.*)"$/) do |comentario|
  begin
    @response = Comments.new.get(comentario)
    puts @response.body
  end
end

Entao(/^valido o codigo de resposta esperado$/) do
  expect(@response.code).to  eq 200
  puts "Validado o recebimento de resposta 200"
end
