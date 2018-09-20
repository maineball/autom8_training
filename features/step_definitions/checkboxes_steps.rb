def initialize
  @checkbox_one = '//*[@id="checkboxes"]/input[1]'
end

Given(/^I visit the checkbox page$/) do
  visit('/checkboxes')
end

When(/^I tick the first checkbox$/) do
  expect(page).to have_text('Checkboxes')
  page.find(:xpath, @checkbox_one).click
end

Then (/^the first checkbox is ticked$/) do
  expect(page.find(:xpath, @checkbox_one).checked?).to eq true
end