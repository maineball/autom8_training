checkboxes = Checkboxes_Page.new

Given(/^I visit the checkbox page$/) do
  visit('/checkboxes')
end

When(/^I tick the first checkbox$/) do
  expect(page).to have_text('Checkboxes')
  #checkboxes.click_checkbox_one
  checkboxes.click_element(checkboxes.checkbox_one_xpath, 'Checkbox')
end

Then (/^the first checkbox is ticked$/) do
  expect(page.find(:xpath, checkboxes.checkbox_one_xpath).checked?).to eq true
end