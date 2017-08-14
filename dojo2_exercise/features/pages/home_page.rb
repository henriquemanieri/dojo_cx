class HomePage < SitePrism::Page

  element :create_task_button, ".desktop-bar [href='index.php?module=Tasks&action=EditView&return_module=Tasks&return_action=DetailView']"
  element :create_button, ".desktop-bar .quickcreatetop .dropdown-toggle[data-toggle='dropdown'][aria-expanded='false']"

  def click_button_task
    find(".desktop-bar .quickcreatetop .dropdown-toggle[data-toggle='dropdown'][aria-expanded='false']").hover
    create_task_button.click
  end
end
