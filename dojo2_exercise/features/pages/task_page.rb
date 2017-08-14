class TaskPage < SitePrism::Page

  element :subject_field, "[name='name']"
  element :start_date_field, "#date_start_date"
  element :description_field, "#description"
  element :save_task_button, "tbody #SAVE"
  element :view_task_button, "[href='index.php?module=Tasks&action=index&return_module=Tasks&return_action=DetailView'] .actionmenulink"
  element :subject_saved, '.module-title-text'

  

  def register_task(subject, date, description)
    subject_field.set(subject)
    start_date_field.set(date)
    description_field.set(description)
  end

  def edit_task(subject2, description2)
    subject_field.set(subject2)
    description_field.set(description2)
    save_task_button.click
  end
end
