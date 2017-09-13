class TaskPage < SitePrism::Page

  element :subject_field, "[name='name']"
  element :start_date_field, "#date_start_date"
  element :description_field, "#description"
  element :save_task_button, :xpath, '//*[@id="SAVE"]'
  element :view_task_button, "[href='index.php?module=Tasks&action=index&return_module=Tasks&return_action=DetailView'] .actionmenulink"
  element :subject_saved, '.module-title-text'
  element :back_to_top_button, "[onclick='SUGAR.util.top();']"
  element :contact_name_field, "[name='contact_name']"



  def register_task(subject, date, contact_name, description)
    subject_field.set(subject)
    start_date_field.set(date)
    contact_name_field.set(contact_name)
    description_field.set(description)
  end

  def edit_task(subject2, description2)
    subject_field.set(subject2)
    description_field.set(description2)
  end

  def brutal_click_save_task_button
    back_to_top_button.click
    Capybara.match = :first
    save_task_button.click
    Capybara.match = :one
  end
end
