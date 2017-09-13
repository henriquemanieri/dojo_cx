class AllTasksPage < SitePrism::Page

  element :edit_task_button, "#edit-100d74bd-f2b3-fede-236e-596cef1a9696"
  element :checkbox_task_one, :xpath, "(//td/input[@type='checkbox'])[1]"
  element :select_options, "#selectLinkTop"
  element :deselecte_all_tasks, "#button_deselect_top"
  element :bulk_action_button, "#delete_listview_top .hidden-desktop"
  element :delete_task_button, "#delete_listview_top.parent-dropdown-action-handler"
  element :first_subject_task, :xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr[1]/td[4]/b/a'
  element :first_contact_task, :xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr[1]/td[5]/a'
  element :first_assigned_user_task, "[href='index.php?module=Employees&offset=1&stamp=1503517570009724800&return_module=Employees&action=DetailView&record=seed_will_id']"
  element :filter_button, ".clickMenu.selectmenu.listViewLinkButton_top.searchLink"
  element :advanced_filter, ".advanced.searchTabHandler"
  element :subject_field, :xpath, '//*[@id="name_advanced"]'
  element :contact_name_field, :xpath, '//*[@id="contact_name_advanced"]'
  element :advanced_search_button, "#search_form_submit_advanced"
  element :my_itens_checkbox, "#current_user_only_advanced"
  element :edit_created_task_button, "[src='themes/SuiteP/images/edit_inline.gif?v=tjT2BQqPmoq6xqRLpiZGSQ']"
  element :unfilter, '.desktopOnly a.glyphicon-list-alt'

  def get_subject
    first_subject_task.text
  end

  def get_contact
    first_contact_task.text
  end

  def get_assigned_user
    first_assigned_user_task.text
  end

  def delete_selected_tasks
    bulk_action_button.click
    delete_task_button.click
  end

  def accept_javascript_pop_up
    page.driver.browser.switch_to.alert.accept
  end

  def advanced_search_task_by_contact(search_subject, search_contact)
    filter_button.click
    advanced_filter.click
    subject_field.set(search_subject)
    contact_name_field.set(search_contact)
    advanced_search_button.click
  end

  def advanced_search_task_by_my_itens(search_subject)
    filter_button.click
    advanced_filter.click
    subject_field.set(search_subject)

    my_itens_checkbox.click
    advanced_search_button.click
  end

end
