Dado(/^que acesse o site$/) do
  LoginPage.new.load
end

Quando(/^logar no sistema$/) do
  LoginPage.new.log_in('will', 'will')
end

Quando(/^entar na tela de Create Task$/) do
  HomePage.new.click_button_task
end

Quando(/^preencher o formulario de criação$/) do
  TaskPage.new.register_task('teste1', '09/29/2017', 'testing test')
end

Quando(/^salvar o formulario$/) do
  TaskPage.new.save_task_button.click
end

Entao(/^confirmar se o nome da task parece como titulo$/) do
  assert_text(TaskPage.new.subject_saved)
end
