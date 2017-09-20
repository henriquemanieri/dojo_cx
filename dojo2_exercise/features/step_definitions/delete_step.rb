Dado(/^que apareça todas as tasks em lista$/) do
  @search_subject = AllTasksPage.new.get_subject
  @search_contact = AllTasksPage.new.get_contact
end

Quando(/^deletar a primeira task da lista$/) do
  AllTasksPage.new.checkbox_task_one.click
  AllTasksPage.new.delete_selected_tasks
  sleep 3
  AllTasksPage.new.accept_javascript_pop_up
end

Entao(/^não deve aparecer a mesma task$/) do
  AllTasksPage.new.advanced_search_task_by_contact(@search_subject, @search_contact)
  assert_text('No results found... Perhaps change your search criteria and try again?')
  AllTasksPage.new.unfilter.click
end
