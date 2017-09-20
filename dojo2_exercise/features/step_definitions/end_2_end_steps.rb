Dado(/^que eu entre na tela de criação de tasks$/) do
  HomePage.new.click_button_task
end

Quando(/^criar uma nova task$/) do
  TaskPage.new.register_task('teste endtoend1', '12/12/2017', 'Henrique Teste', 'testing test')
  TaskPage.new.brutal_click_save_task_button
  TaskPage.new.view_task_button.click
end

Quando(/^editar a task$/) do
  AllTasksPage.new.advanced_search_task_by_my_itens('teste endtoend1')
  AllTasksPage.new.edit_created_task_button.click
  TaskPage.new.edit_task('teste endtoend2', 'testing teste2')
  TaskPage.new.brutal_click_save_task_button
  TaskPage.new.view_task_button.click
  Capybara.match = :first
  AllTasksPage.new.unfilter.click
  Capybara.match = :one
end

Quando(/^deletar a task$/) do
  AllTasksPage.new.advanced_search_task_by_my_itens('teste endtoend2')
  AllTasksPage.new.checkbox_task_one.click
  AllTasksPage.new.delete_selected_tasks
  sleep 3
  AllTasksPage.new.accept_javascript_pop_up
end

Entao(/^não deve aparecer a task$/) do
  assert_text('No results found... Perhaps change your search criteria and try again?')
  AllTasksPage.new.unfilter.click
end
