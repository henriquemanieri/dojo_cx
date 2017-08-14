Dado(/^que esteja na home do site$/) do
  binding.pry
  visit 'http://opensource.demo.orangehrmlive.com'
end

Quando(/^logar no dashboard$/) do
  fill_in "txtUsername", :with => "Admin"
  fill_in "txtPassword", :with => "admin"

end

Entao(/^eu quero ver o testo dashboard$/) do

  click_button("btnLogin")
end
