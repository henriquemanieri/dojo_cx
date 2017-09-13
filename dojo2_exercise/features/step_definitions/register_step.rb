Dado(/^que eu entre na tela de Create Task$/) do
  HomePage.new.click_button_task
end

Quando(/^preencher o formulario de criação$/) do
  TaskPage.new.register_task('teste1', '09/29/2017', 'Henrique Teste', 'testing test')
end

Quando(/^salvar o formulario$/) do
  TaskPage.new.brutal_click_save_task_button
end

Entao(/^confirmar se o nome da task aparece como titulo$/) do
  assert_text('teste1')
end
