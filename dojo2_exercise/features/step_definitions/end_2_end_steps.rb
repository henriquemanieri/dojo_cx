Dado(/^que eu entre na tela de criação de tasks$/) do
  HomePage.new.click_button_task
end

Quando(/^preencher o formulario de criação da task$/) do
  TaskPage.new.register_task('teste endtoend1', '12/12/2017', 'Henrique Teste', 'testing test')
end

Quando(/^salvar-lo$/) do
  TaskPage.new.brutal_click_save_task_button
end

Quando(/^abrir tela de visualização da task$/) do
  TaskPage.new.view_task_button.click
end

Quando(/^pesquisar task para editar$/) do
  AllTasksPage.new.advanced_search_task_by_my_itens('teste endtoend1')
end

Quando(/^clicar no botao para editar$/) do
  AllTasksPage.new.edit_created_task_button.click
end

Quando(/^editar os campos desejados$/) do
  TaskPage.new.edit_task('teste endtoend2', 'testing teste2')
end

Quando(/^salvar a task editada$/) do
  TaskPage.new.brutal_click_save_task_button
end

Quando(/^abrir a tela com todas as tasks$/) do
  TaskPage.new.view_task_button.click
  Capybara.match = :first
  AllTasksPage.new.unfilter.click
  Capybara.match = :one
end

Quando(/^pesquisar a task que foi editada$/) do
  AllTasksPage.new.advanced_search_task_by_my_itens('teste endtoend2')
end

Quando(/^clicar na checkbox para marcar a task editada$/) do
  AllTasksPage.new.checkbox_task_one.click
end

Quando(/^deletar a task$/) do
  AllTasksPage.new.delete_selected_tasks
end

Quando(/^confirmar o delete$/) do
  sleep 3
  AllTasksPage.new.accept_javascript_pop_up
end

Entao(/^não deve aparecer a task$/) do
  assert_text('No results found... Perhaps change your search criteria and try again?')
end
