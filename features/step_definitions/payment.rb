Given("I visit orders page") do
  expect(current_path).to eq orders_path
end

When("I click on {string} button") do |element|
  click_button element
  sleep(2)
  @stripe_iframe = all('iframe[name=stripe_checkout_app]').last
end

Given("I fill in stripe form field {string} with {string}") do |field, value|
  sleep(2)
  @stripe_iframe = all('iframe[name=stripe_checkout_app]').last
  within_frame @stripe_iframe do
      fill_in field, with: value
  end
end

When("I submit the stripe form") do
  within_frame @stripe_iframe do
    find('.Section-button').click
  end
end
