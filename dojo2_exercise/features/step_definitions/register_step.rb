Dado(/^que eu entre na tela de Create Task$/) do
  HomePage.new.click_button_task
end

Quando(/^criar uma nova task chamada "(.*?)"$/) do |task_name|
  TaskPage.new.register_task(task_name.to_s, '09/29/2017', 'Henrique Teste', 'testing test')
  TaskPage.new.brutal_click_save_task_button
end

Entao(/^confirmar se o nome da "(.*?)" aparece como titulo$/) do |task_name|
  assert_text(task_name.to_s)
end
