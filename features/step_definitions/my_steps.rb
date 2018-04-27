Given(/^Visito la portada$/) do
  visit '/'
end

Then(/^Veo "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^Veo label de "(.*?)"$/) do |text2|
  last_response.body.should =~ /#{text2}/m
end

When(/^respondo "(.*?)"$/) do |respondo|
  fill_in("respuesta", :with => respondo)
  click_button("Responder")
end

Then(/^Deberia ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^selecciono "(.*?)"$/) do |respondo|
  fill_in("respuesta", :with => respondo)
  click_button("Responder")
end

Then(/^Deberia de ver "(.*?)"$/) do |texterror|
  last_response.body.should =~ /#{texterror}/m
end

Then(/^Deberia aparecer "(.*?)"$/) do |texterror|
  last_response.body.should =~ /#{texterror}/m
end












