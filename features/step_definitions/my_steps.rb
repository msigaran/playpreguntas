Given(/^Visito la portada$/) do
  visit '/'
end

Then(/^Veo "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^Veo label de "(.*?)"$/) do |text2|
  last_response.body.should =~ /#{text2}/m
end

When(/^Presiono el boton "(.*?)"$/) do |name|
  click_button(name)
end

Then(/^Deberia ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end








