Given("I click on {string} link") do |link|
  click_link link
end

Then("I should be redirected to {string} page") do |page_name|
  expect(current_path).to eq order_path
end

Then("I should see {string} with a price of {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end
