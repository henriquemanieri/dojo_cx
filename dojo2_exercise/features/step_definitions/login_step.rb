Dado(/^que acesse o site$/) do
  LoginPage.new.load
end

Dado(/^logue no sistema$/) do
  LoginPage.new.log_in('will', 'will')
end
