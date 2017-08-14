#
# Dado(/^que esteja no PIM$/)  do
#  click_button ('menu_pim_viewPimModule')
#  click_button ('menu_pim_addEmployee')
# end
#
#
# Quando(/^criar usuario$/) do
#  click_button("btnAdd")
#  fill_in "firstName", :with => "usuario"
#  fill_in "lastName", :with => "novo"
#  click_button("btnSave")
# end
#
# Entao(/^quero ver o texto Personal Details$/) do
#  assert_text('Personal Details')
# end
