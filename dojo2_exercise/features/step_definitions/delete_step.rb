Dado(/^que acesse a tela de Create Task$/) do
  HomePage.new.click_button_task
end

Quando(/^abrir a tela de visualização da task$/) do
  TaskPage.new.view_task_button.click
end

Quando(/^clicar na caixa para marcar a task que foi criada$/) do
  AllTasksPage.new.checkbox_task_one.click
  @search_subject = AllTasksPage.new.get_subject
  @search_contact = AllTasksPage.new.get_contact
end

Quando(/^clicar no Bulk Action para deletar$/) do
  AllTasksPage.new.delete_selected_tasks
end

Quando(/^confirmar o delete no box$/) do
  sleep 3
  AllTasksPage.new.accept_javascript_pop_up
end

Entao(/^não deve aparecer a mesma task$/) do
  AllTasksPage.new.advanced_search_task_by_contact(@search_subject, @search_contact)
  assert_text('No results found... Perhaps change your search criteria and try again?')
  AllTasksPage.new.unfilter.click
end
