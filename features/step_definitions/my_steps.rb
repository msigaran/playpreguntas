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








