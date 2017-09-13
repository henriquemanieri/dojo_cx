Dado(/^esteja na tela de Create Task$/) do
  HomePage.new.click_button_task
end

Quando(/^acessar a tela de visualização da task$/) do
  TaskPage.new.view_task_button.click
end

Quando(/^clicar no botao de editar$/) do
  AllTasksPage.new.edit_task_button.click
end

Quando(/^editar o campo desejado$/) do
  TaskPage.new.edit_task('teste2', 'testing teste2')
end

Quando(/^salvar a task$/) do
  TaskPage.new.brutal_click_save_task_button
end

Entao(/^o campo solicitado tem que estar alterado$/) do
  assert_text('teste2')
  assert_text('testing teste2')
end
