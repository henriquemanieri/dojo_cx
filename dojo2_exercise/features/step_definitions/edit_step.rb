Dado(/^que vizualize todas as tasks$/) do
  AllTasksPage.new.edit_task_button.click
end

Quando(/^editar a primeira task da lista$/) do
  TaskPage.new.edit_task('teste2', 'testing teste2')
  TaskPage.new.brutal_click_save_task_button
end

Entao(/^o campo solicitado tem que estar alterado$/) do
  assert_text('teste2')
  assert_text('testing teste2')
end
