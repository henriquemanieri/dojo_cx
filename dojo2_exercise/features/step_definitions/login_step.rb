Dado(/^que acesse o site$/) do
  LoginPage.new.load
end

Dado(/^logue no sistema$/) do
  LoginPage.new.log_in('will', 'will')
end

Dado(/^que acesse a tela de Create Task$/) do
  HomePage.new.click_button_task
end

Dado(/^abrir a tela de visualização da task$/) do
  TaskPage.new.view_task_button.click
end
