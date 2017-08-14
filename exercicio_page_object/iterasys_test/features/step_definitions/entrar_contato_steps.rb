Dado(/^esteja no site da Iterasys$/) do
  visit 'http://www.iterasys.com.br/'
end

Quando(/^acessar o link contato$/) do
  click_link('Contato')
end

Quando(/^preencher meus dados para contato$/) do
  fill_in 'your-name', with:  'Teste nome'
  fill_in 'your-email', with: 'teste@hotmail.com'
end
Quando(/^escrever assunto e corpo do e-mail e submeter a mensagem$/) do
  fill_in 'your-subject', with: 'Teste testado'
  fill_in 'your-message', with: 'Teste do capybara dojo_1'
  click_button 'Submit'
end

Entao(/^visualizar mensagem de sucesso$/) do
  assert_text 'Your message was sent successfully. Thanks.'
end
