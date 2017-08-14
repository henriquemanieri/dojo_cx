class AllTasksPage < SitePrism::Page

  element :edit_task_button, "#edit-100d74bd-f2b3-fede-236e-596cef1a9696"
  element :checkbox_task_one, "[value='100d74bd-f2b3-fede-236e-596cef1a9696']"
  element :select_options, "#selectLinkTop"
  element :deselecte_all_tasks, "#button_deselect_top"
  element :bulk_action_button, "#delete_listview_top .hidden-desktop"
  element :delete_selected_tasks_button, "#delete_listview_top.parent-dropdown-action-handler"

  def delete_selected_tasks
    checkbox_task_one.click
    bulk_action_button.click
    delete_selected_tasks.click
  end
end
